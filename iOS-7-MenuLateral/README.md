#iOS-7-MenuLateral
=================
Necesaria la instalacion de CocoaPod MFSideMenu [https://github.com/mikefrederick/MFSideMenu]

```ruby
platform :ios, '7.0' 
pod 'MFSideMenu', '~> 0.5.4'
```

##AppDelegate
- Importar la libreria instalada por CocoaPod
```objective-c
#import <MFSideMenu/MFSideMenu.h>
```

- Configuramos y añadimos distintos menus (izquierda y/o derecha):

```objective-c
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // @"Main" es el nombre del .storyboard
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]]; 

    
    // Cada uno de los nombre de estar en el storyboard correspondiense con el identificador
    // navigationController -> Navigation Controller + Menu Lateral View Controller
    // leftSideMenuViewController -> TableView con class: SideMenuViewController y Storyboard ID: leftSideMenuViewController
    // rightSideMenuViewController -> TableView con class: SideMenuViewController y Storyboard ID: rightSideMenuViewController
    UINavigationController *navigationController = [storyboard instantiateViewControllerWithIdentifier:@"navigationController"];
    UIViewController *leftSideMenuViewController = [storyboard instantiateViewControllerWithIdentifier:@"leftSideMenuViewController"];
    UIViewController *rightSideMenuViewController = [storyboard instantiateViewControllerWithIdentifier:@"rightSideMenuViewController"];
    
    MFSideMenuContainerViewController *container = (MFSideMenuContainerViewController *)self.window.rootViewController;
    
    // El class del View Inicial debe ser MFSideMenuContainerViewController
    // class: MFSideMenuContainerViewController y Storyboard ID: MFSideMenuContainerViewController
    // si no es el tipo lanzara un Assert
    NSParameterAssert([container isKindOfClass:[MFSideMenuContainerViewController class]]);
   
    [container setLeftMenuViewController:leftSideMenuViewController];
    [container setRightMenuViewController:rightSideMenuViewController];
    [container setCenterViewController:navigationController];
    
    return YES;

}

```

##Clase SideMenuViewController
Clase para manejar los menus con las funciones tanto para pintar elementos, como para delegar con View Principal, en este caso MenuLateralViewController

Aqui se puede ver el ejemplo que acceder al controlador principal
```objective-c
    MenuLateralViewController *demoViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MenuLateralViewController"];
    demoViewController.title = [NSString stringWithFormat:@"Demo #%d-%d", indexPath.section, indexPath.row];
```

##Mostrar menus
Para mostrar menús tenemos metodos de MFSideMenu

```objective-c
[self.menuContainerViewController toggleLeftSideMenuCompletion:nil];
```

