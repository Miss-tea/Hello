.class public final synthetic Lcom/sekai/bank/ui/transactions/TransactionsFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic f$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$$ExternalSyntheticLambda2;->f$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$$ExternalSyntheticLambda2;->f$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-virtual {v0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->lambda$setupSwipeRefresh$2$com-sekai-bank-ui-transactions-TransactionsFragment()V

    return-void
.end method
