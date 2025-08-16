.class public Lcom/sekai/bank/ui/dashboard/DashboardFragment;
.super Landroidx/fragment/app/Fragment;
.source "DashboardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DashboardFragment"


# instance fields
.field private apiService:Lcom/sekai/bank/network/ApiService;

.field private binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

.field private isLoadingBalance:Z

.field private isLoadingTransactions:Z

.field private tokenManager:Lcom/sekai/bank/utils/TokenManager;

.field private transactionAdapter:Lcom/sekai/bank/ui/transactions/TransactionAdapter;


# direct methods
.method public static synthetic $r8$lambda$D62WKWWDds_qEfFNVD8YgrNNTUA(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->refreshData()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)Lcom/sekai/bank/databinding/FragmentDashboardBinding;
    .locals 0

    iget-object p0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettransactionAdapter(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)Lcom/sekai/bank/ui/transactions/TransactionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->transactionAdapter:Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisLoadingBalance(Lcom/sekai/bank/ui/dashboard/DashboardFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->isLoadingBalance:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisLoadingTransactions(Lcom/sekai/bank/ui/dashboard/DashboardFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->isLoadingTransactions:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndStopRefresh(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->checkAndStopRefresh()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowError(Lcom/sekai/bank/ui/dashboard/DashboardFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBalanceDisplay(Lcom/sekai/bank/ui/dashboard/DashboardFragment;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->updateBalanceDisplay(D)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTransactionEmptyState(Lcom/sekai/bank/ui/dashboard/DashboardFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->updateTransactionEmptyState(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->isLoadingBalance:Z

    .line 43
    iput-boolean v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->isLoadingTransactions:Z

    return-void
.end method

.method private checkAndStopRefresh()V
    .locals 2

    .line 256
    iget-boolean v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->isLoadingBalance:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->isLoadingTransactions:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method private initializeServices()V
    .locals 1

    .line 61
    invoke-static {}, Lcom/sekai/bank/SekaiApplication;->getInstance()Lcom/sekai/bank/SekaiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sekai/bank/SekaiApplication;->getApiClient()Lcom/sekai/bank/network/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sekai/bank/network/ApiClient;->getApiService()Lcom/sekai/bank/network/ApiService;

    move-result-object v0

    iput-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->apiService:Lcom/sekai/bank/network/ApiService;

    .line 62
    invoke-static {}, Lcom/sekai/bank/SekaiApplication;->getInstance()Lcom/sekai/bank/SekaiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sekai/bank/SekaiApplication;->getTokenManager()Lcom/sekai/bank/utils/TokenManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    return-void
.end method

.method static synthetic lambda$loadUserData$5(Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 2

    .line 141
    const-string v0, "DashboardFragment"

    const-string v1, "Error checking token validity"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$setWelcomeMessage$8(Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 2

    .line 156
    const-string v0, "DashboardFragment"

    const-string v1, "Error getting username"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$setupRecyclerView$2(Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 2

    .line 85
    const-string v0, "DashboardFragment"

    const-string v1, "Error getting user ID"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private loadBalance()V
    .locals 2

    .line 188
    iget-boolean v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->isLoadingBalance:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->isLoadingBalance:Z

    .line 191
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->apiService:Lcom/sekai/bank/network/ApiService;

    invoke-interface {v0}, Lcom/sekai/bank/network/ApiService;->getBalance()Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/dashboard/DashboardFragment$2;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$2;-><init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private loadRecentTransactions()V
    .locals 3

    .line 209
    iget-boolean v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->isLoadingTransactions:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->isLoadingTransactions:Z

    .line 212
    iget-object v1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->apiService:Lcom/sekai/bank/network/ApiService;

    const/4 v2, 0x5

    invoke-interface {v1, v0, v2}, Lcom/sekai/bank/network/ApiService;->getTransactions(II)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/dashboard/DashboardFragment$3;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$3;-><init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private loadUserData()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    invoke-virtual {v0}, Lcom/sekai/bank/utils/TokenManager;->isTokenValid()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda1;-><init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda2;-><init>()V

    .line 140
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method private loadUserProfile()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->apiService:Lcom/sekai/bank/network/ApiService;

    invoke-interface {v0}, Lcom/sekai/bank/network/ApiService;->getUserProfile()Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/dashboard/DashboardFragment$1;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$1;-><init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private navigateToBottomNavItem(I)V
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/sekai/bank/R$id;->bottom_navigation:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->requireView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/navigation/NavController;->navigate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    const-string v0, "DashboardFragment"

    const-string v1, "Error navigating"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private redirectToAuth()V
    .locals 3

    .line 162
    invoke-virtual {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/sekai/bank/ui/auth/AuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->startActivity(Landroid/content/Intent;)V

    .line 166
    invoke-virtual {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method private refreshBalance()V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->loadBalance()V

    return-void
.end method

.method private refreshData()V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->loadBalance()V

    .line 252
    invoke-direct {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->loadRecentTransactions()V

    return-void
.end method

.method private setWelcomeMessage()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    invoke-virtual {v0}, Lcom/sekai/bank/utils/TokenManager;->getUsername()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda4;-><init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda5;-><init>()V

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method private setupClickListeners()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->sendMoneyCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->viewAllTransactionsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->balanceCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupRecyclerView()V
    .locals 3

    .line 72
    new-instance v0, Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/sekai/bank/ui/transactions/TransactionAdapter;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->transactionAdapter:Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    .line 73
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->recentTransactionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 74
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->recentTransactionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->transactionAdapter:Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 76
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    invoke-virtual {v0}, Lcom/sekai/bank/utils/TokenManager;->getUserId()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda6;-><init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda7;-><init>()V

    .line 84
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method private setupRefreshListener()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda0;-><init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private setupUI()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->setupRecyclerView()V

    .line 67
    invoke-direct {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->setupClickListeners()V

    .line 68
    invoke-direct {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->setupRefreshListener()V

    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 2

    .line 266
    invoke-virtual {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 267
    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_0
    return-void
.end method

.method private updateBalanceDisplay(D)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 235
    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 237
    iget-object p2, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    iget-object p2, p2, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->balanceText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object p2, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    iget-object p2, p2, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->balanceCard:Lcom/google/android/material/card/MaterialCardView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Balance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/card/MaterialCardView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateTransactionEmptyState(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;)V"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 244
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 245
    :goto_1
    iget-object v1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->noTransactionsText:Landroid/widget/TextView;

    const/16 v2, 0x8

    if-eqz p1, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->recentTransactionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    move v0, v2

    :cond_3
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method synthetic lambda$loadUserData$3$com-sekai-bank-ui-dashboard-DashboardFragment(Ljava/lang/Boolean;)V
    .locals 0

    .line 130
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->loadUserProfile()V

    .line 132
    invoke-direct {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->loadBalance()V

    .line 133
    invoke-direct {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->loadRecentTransactions()V

    .line 134
    invoke-direct {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->setWelcomeMessage()V

    goto :goto_0

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->redirectToAuth()V

    :goto_0
    return-void
.end method

.method synthetic lambda$loadUserData$4$com-sekai-bank-ui-dashboard-DashboardFragment(Ljava/lang/Boolean;)V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda3;-><init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$setWelcomeMessage$6$com-sekai-bank-ui-dashboard-DashboardFragment(Ljava/lang/String;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->welcomeText:Landroid/widget/TextView;

    sget v1, Lcom/sekai/bank/R$string;->welcome_back:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$setWelcomeMessage$7$com-sekai-bank-ui-dashboard-DashboardFragment(Ljava/lang/String;)V
    .locals 2

    .line 0
    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda8;-><init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$setupRecyclerView$0$com-sekai-bank-ui-dashboard-DashboardFragment(Ljava/lang/String;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->transactionAdapter:Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p1}, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->setCurrentUserId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$setupRecyclerView$1$com-sekai-bank-ui-dashboard-DashboardFragment(Ljava/lang/String;)V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$$ExternalSyntheticLambda9;-><init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->sendMoneyCard:Lcom/google/android/material/card/MaterialCardView;

    if-ne p1, v0, :cond_0

    .line 103
    sget p1, Lcom/sekai/bank/R$id;->nav_send:I

    invoke-direct {p0, p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->navigateToBottomNavItem(I)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->viewAllTransactionsButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 105
    sget p1, Lcom/sekai/bank/R$id;->nav_transactions:I

    invoke-direct {p0, p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->navigateToBottomNavItem(I)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->balanceCard:Lcom/google/android/material/card/MaterialCardView;

    if-ne p1, v0, :cond_2

    .line 107
    invoke-direct {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->refreshBalance()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p3, 0x0

    .line 47
    invoke-static {p1, p2, p3}, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    .line 48
    invoke-virtual {p1}, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 285
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 277
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 278
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->binding:Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    if-eqz v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->refreshData()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->initializeServices()V

    .line 56
    invoke-direct {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->setupUI()V

    .line 57
    invoke-direct {p0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->loadUserData()V

    return-void
.end method
