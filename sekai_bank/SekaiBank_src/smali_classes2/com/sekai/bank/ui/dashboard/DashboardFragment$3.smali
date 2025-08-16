.class Lcom/sekai/bank/ui/dashboard/DashboardFragment$3;
.super Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback;
.source "DashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sekai/bank/ui/dashboard/DashboardFragment;->loadRecentTransactions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback<",
        "Ljava/util/List<",
        "Lcom/sekai/bank/models/Transaction;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$3;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback;-><init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment;Lcom/sekai/bank/ui/dashboard/DashboardFragment-IA;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$3;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load transactions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->-$$Nest$mshowError(Lcom/sekai/bank/ui/dashboard/DashboardFragment;Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$3;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->-$$Nest$fputisLoadingTransactions(Lcom/sekai/bank/ui/dashboard/DashboardFragment;Z)V

    .line 227
    iget-object p1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$3;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->-$$Nest$mcheckAndStopRefresh(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 212
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$3;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;)V"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$3;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->-$$Nest$fgettransactionAdapter(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$3;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->-$$Nest$fgettransactionAdapter(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->updateTransactions(Ljava/util/List;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$3;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    invoke-static {v0, p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->-$$Nest$mupdateTransactionEmptyState(Lcom/sekai/bank/ui/dashboard/DashboardFragment;Ljava/util/List;)V

    .line 219
    iget-object p1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$3;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->-$$Nest$fputisLoadingTransactions(Lcom/sekai/bank/ui/dashboard/DashboardFragment;Z)V

    .line 220
    iget-object p1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$3;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->-$$Nest$mcheckAndStopRefresh(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)V

    return-void
.end method
