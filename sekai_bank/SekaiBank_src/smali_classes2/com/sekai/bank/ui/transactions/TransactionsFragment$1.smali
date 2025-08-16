.class Lcom/sekai/bank/ui/transactions/TransactionsFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "TransactionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sekai/bank/ui/transactions/TransactionsFragment;->setupRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

.field final synthetic val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/sekai/bank/ui/transactions/TransactionsFragment;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$1;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    iput-object p2, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$1;->val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 81
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$1;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$fgetisLoading(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$1;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$fgethasMorePages(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$1;->val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result p1

    .line 83
    iget-object p2, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$1;->val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result p2

    .line 84
    iget-object p3, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$1;->val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    add-int/2addr p1, p3

    add-int/lit8 p2, p2, -0x5

    if-lt p1, p2, :cond_0

    .line 87
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$1;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$mloadMoreTransactions(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)V

    :cond_0
    return-void
.end method
