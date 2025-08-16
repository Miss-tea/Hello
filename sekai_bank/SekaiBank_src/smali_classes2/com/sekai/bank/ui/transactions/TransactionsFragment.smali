.class public Lcom/sekai/bank/ui/transactions/TransactionsFragment;
.super Landroidx/fragment/app/Fragment;
.source "TransactionsFragment.java"


# instance fields
.field private final PAGE_SIZE:I

.field private adapter:Lcom/sekai/bank/ui/transactions/TransactionAdapter;

.field private apiService:Lcom/sekai/bank/network/ApiService;

.field private binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

.field private currentPage:I

.field private hasMorePages:Z

.field private isLoading:Z

.field private tokenManager:Lcom/sekai/bank/utils/TokenManager;

.field private transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetadapter(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)Lcom/sekai/bank/ui/transactions/TransactionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->adapter:Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)Lcom/sekai/bank/databinding/FragmentTransactionsBinding;
    .locals 0

    iget-object p0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentPage(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)I
    .locals 0

    iget p0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->currentPage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethasMorePages(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->hasMorePages:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisLoading(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->isLoading:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettransactions(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->transactions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentPage(Lcom/sekai/bank/ui/transactions/TransactionsFragment;I)V
    .locals 0

    iput p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->currentPage:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhasMorePages(Lcom/sekai/bank/ui/transactions/TransactionsFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->hasMorePages:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisLoading(Lcom/sekai/bank/ui/transactions/TransactionsFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->isLoading:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadMoreTransactions(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->loadMoreTransactions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowEmptyState(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->showEmptyState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowError(Lcom/sekai/bank/ui/transactions/TransactionsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowTransactions(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->showTransactions()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->currentPage:I

    const/16 v1, 0x14

    .line 35
    iput v1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->PAGE_SIZE:I

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->isLoading:Z

    .line 37
    iput-boolean v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->hasMorePages:Z

    return-void
.end method

.method private loadMoreTransactions()V
    .locals 1

    const/4 v0, 0x1

    .line 183
    invoke-direct {p0, v0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->loadTransactions(Z)V

    return-void
.end method

.method private loadTransactions(Z)V
    .locals 3

    .line 106
    iget-boolean v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->isLoading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->isLoading:Z

    if-nez p1, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->showLoadingState()V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->adapter:Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    invoke-virtual {v1, v0}, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->setLoadingMore(Z)V

    :goto_0
    if-eqz p1, :cond_2

    .line 116
    iget v1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->currentPage:I

    add-int/2addr v0, v1

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->apiService:Lcom/sekai/bank/network/ApiService;

    const/16 v2, 0x14

    invoke-interface {v1, v0, v2}, Lcom/sekai/bank/network/ApiService;->getTransactions(II)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;-><init>(Lcom/sekai/bank/ui/transactions/TransactionsFragment;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private refreshTransactions()V
    .locals 1

    const/4 v0, 0x1

    .line 187
    iput v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->currentPage:I

    .line 188
    iput-boolean v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->hasMorePages:Z

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, v0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->loadTransactions(Z)V

    return-void
.end method

.method private setupRecyclerView()V
    .locals 3

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->transactions:Ljava/util/List;

    .line 60
    new-instance v0, Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    iget-object v1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->transactions:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/sekai/bank/ui/transactions/TransactionAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->adapter:Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    .line 63
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    invoke-virtual {v0}, Lcom/sekai/bank/utils/TokenManager;->getUserId()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/transactions/TransactionsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 71
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 72
    iget-object v1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->recyclerViewTransactions:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 73
    iget-object v1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->recyclerViewTransactions:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->adapter:Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 76
    iget-object v1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->recyclerViewTransactions:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/sekai/bank/ui/transactions/TransactionsFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment$1;-><init>(Lcom/sekai/bank/ui/transactions/TransactionsFragment;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private setupSwipeRefresh()V
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 96
    invoke-virtual {p0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sekai/bank/R$color;->colorPrimary:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 97
    invoke-virtual {p0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/sekai/bank/R$color;->colorSecondary:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 100
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/sekai/bank/ui/transactions/TransactionsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private showEmptyState()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    .line 209
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->recyclerViewTransactions:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->emptyStateLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->showEmptyState()V

    goto :goto_0

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->showTransactions()V

    .line 220
    :goto_0
    invoke-virtual {p0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showLoadingState()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->recyclerViewTransactions:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->emptyStateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->startShimmer()V

    return-void
.end method

.method private showTransactions()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    .line 202
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->emptyStateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->recyclerViewTransactions:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method synthetic lambda$setupRecyclerView$0$com-sekai-bank-ui-transactions-TransactionsFragment(Ljava/lang/String;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->adapter:Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    invoke-virtual {v0, p1}, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->setCurrentUserId(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setupRecyclerView$1$com-sekai-bank-ui-transactions-TransactionsFragment(Ljava/lang/String;)V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/transactions/TransactionsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/sekai/bank/ui/transactions/TransactionsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$setupSwipeRefresh$2$com-sekai-bank-ui-transactions-TransactionsFragment()V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->refreshTransactions()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p3, 0x0

    .line 41
    invoke-static {p1, p2, p3}, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    .line 42
    invoke-virtual {p1}, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 225
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 226
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    :cond_0
    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->binding:Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Lcom/sekai/bank/SekaiApplication;->getInstance()Lcom/sekai/bank/SekaiApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/SekaiApplication;->getApiClient()Lcom/sekai/bank/network/ApiClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/network/ApiClient;->getApiService()Lcom/sekai/bank/network/ApiService;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->apiService:Lcom/sekai/bank/network/ApiService;

    .line 51
    invoke-static {}, Lcom/sekai/bank/SekaiApplication;->getInstance()Lcom/sekai/bank/SekaiApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/SekaiApplication;->getTokenManager()Lcom/sekai/bank/utils/TokenManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    .line 53
    invoke-direct {p0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->setupRecyclerView()V

    .line 54
    invoke-direct {p0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->setupSwipeRefresh()V

    const/4 p1, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->loadTransactions(Z)V

    return-void
.end method
