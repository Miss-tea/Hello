.class public final Lcom/sekai/bank/databinding/FragmentDashboardBinding;
.super Ljava/lang/Object;
.source "FragmentDashboardBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final balanceCard:Lcom/google/android/material/card/MaterialCardView;

.field public final balanceText:Landroid/widget/TextView;

.field public final noTransactionsText:Landroid/widget/TextView;

.field public final receiveMoneyCard:Lcom/google/android/material/card/MaterialCardView;

.field public final recentTransactionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public final sendMoneyCard:Lcom/google/android/material/card/MaterialCardView;

.field public final swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public final transactionsShimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field public final viewAllTransactionsButton:Landroid/widget/Button;

.field public final welcomeText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/card/MaterialCardView;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lcom/facebook/shimmer/ShimmerFrameLayout;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->rootView:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 64
    iput-object p2, p0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->balanceCard:Lcom/google/android/material/card/MaterialCardView;

    .line 65
    iput-object p3, p0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->balanceText:Landroid/widget/TextView;

    .line 66
    iput-object p4, p0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->noTransactionsText:Landroid/widget/TextView;

    .line 67
    iput-object p5, p0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->receiveMoneyCard:Lcom/google/android/material/card/MaterialCardView;

    .line 68
    iput-object p6, p0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->recentTransactionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    iput-object p7, p0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->sendMoneyCard:Lcom/google/android/material/card/MaterialCardView;

    .line 70
    iput-object p8, p0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 71
    iput-object p9, p0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->transactionsShimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 72
    iput-object p10, p0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->viewAllTransactionsButton:Landroid/widget/Button;

    .line 73
    iput-object p11, p0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->welcomeText:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sekai/bank/databinding/FragmentDashboardBinding;
    .locals 14

    .line 103
    sget v0, Lcom/sekai/bank/R$id;->balance_card:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v4, :cond_0

    .line 109
    sget v0, Lcom/sekai/bank/R$id;->balance_text:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 115
    sget v0, Lcom/sekai/bank/R$id;->no_transactions_text:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 121
    sget v0, Lcom/sekai/bank/R$id;->receive_money_card:I

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v7, :cond_0

    .line 127
    sget v0, Lcom/sekai/bank/R$id;->recent_transactions_recycler_view:I

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v8, :cond_0

    .line 133
    sget v0, Lcom/sekai/bank/R$id;->send_money_card:I

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v9, :cond_0

    .line 139
    move-object v10, p0

    check-cast v10, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 141
    sget v0, Lcom/sekai/bank/R$id;->transactions_shimmer:I

    .line 142
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/facebook/shimmer/ShimmerFrameLayout;

    if-eqz v11, :cond_0

    .line 147
    sget v0, Lcom/sekai/bank/R$id;->view_all_transactions_button:I

    .line 148
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/Button;

    if-eqz v12, :cond_0

    .line 153
    sget v0, Lcom/sekai/bank/R$id;->welcome_text:I

    .line 154
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 159
    new-instance p0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    move-object v2, p0

    move-object v3, v10

    invoke-direct/range {v2 .. v13}, Lcom/sekai/bank/databinding/FragmentDashboardBinding;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/card/MaterialCardView;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lcom/facebook/shimmer/ShimmerFrameLayout;Landroid/widget/Button;Landroid/widget/TextView;)V

    return-object p0

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 164
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/sekai/bank/databinding/FragmentDashboardBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-static {p0, v0, v1}, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sekai/bank/databinding/FragmentDashboardBinding;
    .locals 2

    .line 90
    sget v0, Lcom/sekai/bank/R$layout;->fragment_dashboard:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    :cond_0
    invoke-static {p0}, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->bind(Landroid/view/View;)Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->rootView:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object v0
.end method
