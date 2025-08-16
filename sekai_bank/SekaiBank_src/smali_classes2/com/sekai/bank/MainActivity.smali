.class public Lcom/sekai/bank/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field private static final FROM_PIN_SETUP_EXTRA:Ljava/lang/String; = "from_pin_setup"

.field private static final MAX_NAVIGATION_RETRIES:I = 0x3

.field private static final PIN_MODE_EXTRA:Ljava/lang/String; = "mode"

.field private static final PIN_REQUEST_CODE:I = 0x3e9

.field private static final PIN_SETUP_COMPLETE_EXTRA:Ljava/lang/String; = "pin_setup_complete"

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private binding:Lcom/sekai/bank/databinding/ActivityMainBinding;

.field private isAuthenticating:Z

.field private navController:Landroidx/navigation/NavController;

.field private pinVerified:Z

.field private tokenManager:Lcom/sekai/bank/utils/TokenManager;

.field private uiInitialized:Z


# direct methods
.method public static synthetic $r8$lambda$_ayT4QF30uIWTeL6HITGtzY06ZI(Lcom/sekai/bank/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sekai/bank/MainActivity;->startAuthActivity()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/sekai/bank/MainActivity;->pinVerified:Z

    .line 33
    iput-boolean v0, p0, Lcom/sekai/bank/MainActivity;->isAuthenticating:Z

    .line 34
    iput-boolean v0, p0, Lcom/sekai/bank/MainActivity;->uiInitialized:Z

    return-void
.end method

.method private checkAuthentication()V
    .locals 2

    .line 70
    iget-boolean v0, p0, Lcom/sekai/bank/MainActivity;->isAuthenticating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/sekai/bank/MainActivity;->isAuthenticating:Z

    .line 73
    iget-object v0, p0, Lcom/sekai/bank/MainActivity;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    invoke-virtual {v0}, Lcom/sekai/bank/utils/TokenManager;->isTokenValid()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/sekai/bank/MainActivity;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/sekai/bank/MainActivity;)V

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method private handlePinResult(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 188
    const-string p1, "pin_setup_complete"

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    :cond_0
    const/4 p1, 0x1

    .line 191
    iput-boolean p1, p0, Lcom/sekai/bank/MainActivity;->pinVerified:Z

    .line 192
    invoke-direct {p0}, Lcom/sekai/bank/MainActivity;->setupMainUI()V

    goto :goto_0

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/sekai/bank/MainActivity;->startAuthActivity()V

    :goto_0
    return-void
.end method

.method private handlePinSetupFlow()Z
    .locals 3

    .line 58
    invoke-virtual {p0}, Lcom/sekai/bank/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    const-string v1, "from_pin_setup"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/sekai/bank/MainActivity;->pinVerified:Z

    .line 63
    invoke-direct {p0}, Lcom/sekai/bank/MainActivity;->setupMainUI()V

    return v0

    :cond_0
    return v2
.end method

.method static synthetic lambda$onResume$8(Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private retryNavigationSetup(I)V
    .locals 4

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/sekai/bank/MainActivity;->binding:Lcom/sekai/bank/databinding/ActivityMainBinding;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sekai/bank/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/sekai/bank/MainActivity;->binding:Lcom/sekai/bank/databinding/ActivityMainBinding;

    invoke-virtual {v0}, Lcom/sekai/bank/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/sekai/bank/MainActivity;I)V

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x64

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setupMainUI()V
    .locals 4

    .line 88
    iget-boolean v0, p0, Lcom/sekai/bank/MainActivity;->uiInitialized:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sekai/bank/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sekai/bank/MainActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/sekai/bank/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/sekai/bank/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sekai/bank/databinding/ActivityMainBinding;

    move-result-object v1

    iput-object v1, p0, Lcom/sekai/bank/MainActivity;->binding:Lcom/sekai/bank/databinding/ActivityMainBinding;

    .line 92
    invoke-virtual {v1}, Lcom/sekai/bank/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sekai/bank/MainActivity;->setContentView(Landroid/view/View;)V

    .line 94
    invoke-direct {p0}, Lcom/sekai/bank/MainActivity;->setupWindowInsets()V

    .line 95
    invoke-direct {p0}, Lcom/sekai/bank/MainActivity;->setupNavigation()V

    .line 97
    iput-boolean v0, p0, Lcom/sekai/bank/MainActivity;->uiInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    invoke-direct {p0}, Lcom/sekai/bank/MainActivity;->startAuthActivity()V

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/sekai/bank/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 103
    const-string v2, "context"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 105
    const-string v2, "Hello!"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_1
    return-void
.end method

.method private setupNavigation()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/sekai/bank/MainActivity;->binding:Lcom/sekai/bank/databinding/ActivityMainBinding;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sekai/bank/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/sekai/bank/MainActivity;->binding:Lcom/sekai/bank/databinding/ActivityMainBinding;

    invoke-virtual {v0}, Lcom/sekai/bank/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda9;-><init>(Lcom/sekai/bank/MainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setupWindowInsets()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/sekai/bank/MainActivity;->binding:Lcom/sekai/bank/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityMainBinding;->main:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/sekai/bank/MainActivity;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private shouldCheckTokenValidity()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/sekai/bank/MainActivity;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sekai/bank/MainActivity;->binding:Lcom/sekai/bank/databinding/ActivityMainBinding;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sekai/bank/MainActivity;->pinVerified:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sekai/bank/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startAuthActivity()V
    .locals 2

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sekai/bank/ui/auth/AuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v0}, Lcom/sekai/bank/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 171
    invoke-virtual {p0}, Lcom/sekai/bank/MainActivity;->finish()V

    return-void
.end method

.method private startPinActivity(Ljava/lang/String;)V
    .locals 2

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3e9

    .line 164
    invoke-virtual {p0, v0, p1}, Lcom/sekai/bank/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startPinVerification()V
    .locals 1

    .line 158
    const-string v0, "login"

    invoke-direct {p0, v0}, Lcom/sekai/bank/MainActivity;->startPinActivity(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$checkAuthentication$0$com-sekai-bank-MainActivity(Ljava/lang/Boolean;)V
    .locals 0

    .line 75
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/sekai/bank/MainActivity;->startPinVerification()V

    goto :goto_0

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/sekai/bank/MainActivity;->startAuthActivity()V

    :goto_0
    return-void
.end method

.method synthetic lambda$checkAuthentication$1$com-sekai-bank-MainActivity(Ljava/lang/Boolean;)V
    .locals 1

    .line 74
    new-instance v0, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/sekai/bank/MainActivity;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/sekai/bank/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$checkAuthentication$2$com-sekai-bank-MainActivity(Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 0

    .line 82
    new-instance p1, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/sekai/bank/MainActivity;)V

    invoke-virtual {p0, p1}, Lcom/sekai/bank/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method synthetic lambda$onResume$6$com-sekai-bank-MainActivity()V
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/sekai/bank/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/sekai/bank/MainActivity;->startAuthActivity()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onResume$7$com-sekai-bank-MainActivity(Ljava/lang/Boolean;)V
    .locals 0

    .line 204
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sekai/bank/MainActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 205
    new-instance p1, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/sekai/bank/MainActivity;)V

    invoke-virtual {p0, p1}, Lcom/sekai/bank/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$retryNavigationSetup$5$com-sekai-bank-MainActivity(I)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/sekai/bank/MainActivity;->binding:Lcom/sekai/bank/databinding/ActivityMainBinding;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sekai/bank/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    :try_start_0
    sget v0, Lcom/sekai/bank/R$id;->nav_host_fragment:I

    invoke-static {p0, v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v0

    iput-object v0, p0, Lcom/sekai/bank/MainActivity;->navController:Landroidx/navigation/NavController;

    .line 149
    iget-object v0, p0, Lcom/sekai/bank/MainActivity;->binding:Lcom/sekai/bank/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityMainBinding;->bottomNavigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v1, p0, Lcom/sekai/bank/MainActivity;->navController:Landroidx/navigation/NavController;

    invoke-static {v0, v1}, Landroidx/navigation/ui/NavigationUI;->setupWithNavController(Lcom/google/android/material/navigation/NavigationBarView;Landroidx/navigation/NavController;)V

    .line 150
    iget-object v0, p0, Lcom/sekai/bank/MainActivity;->navController:Landroidx/navigation/NavController;

    sget v1, Lcom/sekai/bank/R$id;->nav_dashboard:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    add-int/lit8 p1, p1, 0x1

    .line 152
    invoke-direct {p0, p1}, Lcom/sekai/bank/MainActivity;->retryNavigationSetup(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$setupNavigation$4$com-sekai-bank-MainActivity()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/sekai/bank/MainActivity;->binding:Lcom/sekai/bank/databinding/ActivityMainBinding;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sekai/bank/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    :try_start_0
    sget v0, Lcom/sekai/bank/R$id;->nav_host_fragment:I

    invoke-static {p0, v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v0

    iput-object v0, p0, Lcom/sekai/bank/MainActivity;->navController:Landroidx/navigation/NavController;

    .line 133
    iget-object v0, p0, Lcom/sekai/bank/MainActivity;->binding:Lcom/sekai/bank/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityMainBinding;->bottomNavigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v1, p0, Lcom/sekai/bank/MainActivity;->navController:Landroidx/navigation/NavController;

    invoke-static {v0, v1}, Landroidx/navigation/ui/NavigationUI;->setupWithNavController(Lcom/google/android/material/navigation/NavigationBarView;Landroidx/navigation/NavController;)V

    .line 134
    iget-object v0, p0, Lcom/sekai/bank/MainActivity;->navController:Landroidx/navigation/NavController;

    sget v1, Lcom/sekai/bank/R$id;->nav_dashboard:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, v0}, Lcom/sekai/bank/MainActivity;->retryNavigationSetup(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$setupWindowInsets$3$com-sekai-bank-MainActivity(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .line 111
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 112
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    .line 114
    iget v2, v0, Landroidx/core/graphics/Insets;->left:I

    iget v3, v0, Landroidx/core/graphics/Insets;->top:I

    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 116
    iget-object p1, p0, Lcom/sekai/bank/MainActivity;->binding:Lcom/sekai/bank/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/sekai/bank/databinding/ActivityMainBinding;->bottomNavigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 117
    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 118
    iget v0, v1, Landroidx/core/graphics/Insets;->bottom:I

    if-lez v0, :cond_0

    iget v4, v1, Landroidx/core/graphics/Insets;->bottom:I

    :cond_0
    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 119
    iget-object v0, p0, Lcom/sekai/bank/MainActivity;->binding:Lcom/sekai/bank/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityMainBinding;->bottomNavigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 176
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/sekai/bank/MainActivity;->isAuthenticating:Z

    .line 179
    invoke-virtual {p0}, Lcom/sekai/bank/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sekai/bank/MainActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    .line 182
    invoke-direct {p0, p2, p3}, Lcom/sekai/bank/MainActivity;->handlePinResult(ILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    :try_start_0
    invoke-static {}, Lcom/sekai/bank/SekaiApplication;->getInstance()Lcom/sekai/bank/SekaiApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/SekaiApplication;->getTokenManager()Lcom/sekai/bank/utils/TokenManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/MainActivity;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    .line 42
    invoke-direct {p0}, Lcom/sekai/bank/MainActivity;->handlePinSetupFlow()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return-void

    .line 44
    :catch_0
    invoke-virtual {p0}, Lcom/sekai/bank/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "fallback"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcom/sekai/bank/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Lcom/sekai/bank/MainActivity;->finish()V

    .line 52
    :cond_0
    iget-boolean p1, p0, Lcom/sekai/bank/MainActivity;->uiInitialized:Z

    if-nez p1, :cond_1

    .line 53
    invoke-direct {p0}, Lcom/sekai/bank/MainActivity;->checkAuthentication()V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 229
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcom/sekai/bank/MainActivity;->binding:Lcom/sekai/bank/databinding/ActivityMainBinding;

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcom/sekai/bank/MainActivity;->isAuthenticating:Z

    .line 232
    iput-boolean v0, p0, Lcom/sekai/bank/MainActivity;->pinVerified:Z

    .line 233
    iput-boolean v0, p0, Lcom/sekai/bank/MainActivity;->uiInitialized:Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 200
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 202
    invoke-direct {p0}, Lcom/sekai/bank/MainActivity;->shouldCheckTokenValidity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sekai/bank/MainActivity;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    invoke-virtual {v0}, Lcom/sekai/bank/utils/TokenManager;->isTokenValid()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/sekai/bank/MainActivity;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 211
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 221
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 222
    invoke-virtual {p0}, Lcom/sekai/bank/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/sekai/bank/MainActivity;->pinVerified:Z

    :cond_0
    return-void
.end method
