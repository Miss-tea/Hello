.class Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sekai/bank/ui/transactions/TransactionsFragment;->loadTransactions(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/sekai/bank/models/responses/ApiResponse<",
        "Ljava/util/List<",
        "Lcom/sekai/bank/models/Transaction;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

.field final synthetic val$isLoadMore:Z


# direct methods
.method constructor <init>(Lcom/sekai/bank/ui/transactions/TransactionsFragment;Z)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    iput-boolean p2, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->val$isLoadMore:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailure$1$com-sekai-bank-ui-transactions-TransactionsFragment$2(Z)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$fputisLoading(Lcom/sekai/bank/ui/transactions/TransactionsFragment;Z)V

    .line 169
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$fgetadapter(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->setLoadingMore(Z)V

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    sget v0, Lcom/sekai/bank/R$string;->error_network:I

    invoke-virtual {p1, v0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$mshowError(Lcom/sekai/bank/ui/transactions/TransactionsFragment;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onResponse$0$com-sekai-bank-ui-transactions-TransactionsFragment$2(ZLretrofit2/Response;)V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$fputisLoading(Lcom/sekai/bank/ui/transactions/TransactionsFragment;Z)V

    .line 124
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)Lcom/sekai/bank/databinding/FragmentTransactionsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentTransactionsBinding;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$fgetadapter(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->setLoadingMore(Z)V

    .line 130
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {v0}, Lcom/sekai/bank/models/responses/ApiResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {p2}, Lcom/sekai/bank/models/responses/ApiResponse;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 135
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$fgettransactions(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 136
    iget-object v2, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-static {v2}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$fgettransactions(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    iget-object v2, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-static {v2}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$fgetadapter(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->notifyItemRangeInserted(II)V

    .line 138
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$fgetcurrentPage(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {p1, v2}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$fputcurrentPage(Lcom/sekai/bank/ui/transactions/TransactionsFragment;I)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$fgettransactions(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 142
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$fgettransactions(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$fgetadapter(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->notifyDataSetChanged()V

    .line 144
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-static {p1, v0}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$fputcurrentPage(Lcom/sekai/bank/ui/transactions/TransactionsFragment;I)V

    .line 148
    :goto_0
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/16 v2, 0x14

    if-lt p2, v2, :cond_2

    move v1, v0

    :cond_2
    invoke-static {p1, v1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$fputhasMorePages(Lcom/sekai/bank/ui/transactions/TransactionsFragment;Z)V

    .line 150
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$fgettransactions(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 151
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$mshowEmptyState(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)V

    goto :goto_2

    .line 153
    :cond_3
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$mshowTransactions(Lcom/sekai/bank/ui/transactions/TransactionsFragment;)V

    goto :goto_2

    .line 156
    :cond_4
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/ApiResponse;->getError()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 157
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/ApiResponse;->getError()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    sget p2, Lcom/sekai/bank/R$string;->error_generic:I

    invoke-virtual {p1, p2}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 158
    :goto_1
    iget-object p2, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-static {p2, p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->-$$Nest$mshowError(Lcom/sekai/bank/ui/transactions/TransactionsFragment;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Ljava/util/List<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 166
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-boolean p2, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->val$isLoadMore:Z

    new-instance v0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2$$ExternalSyntheticLambda1;-><init>(Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;Z)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Ljava/util/List<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;>;>;",
            "Lretrofit2/Response<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Ljava/util/List<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;>;>;)V"
        }
    .end annotation

    .line 121
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->this$0:Lcom/sekai/bank/ui/transactions/TransactionsFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/transactions/TransactionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;->val$isLoadMore:Z

    new-instance v1, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p2}, Lcom/sekai/bank/ui/transactions/TransactionsFragment$2$$ExternalSyntheticLambda0;-><init>(Lcom/sekai/bank/ui/transactions/TransactionsFragment$2;ZLretrofit2/Response;)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
