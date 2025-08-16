.class public final synthetic Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;

.field public final synthetic f$1:Lcom/sekai/bank/models/Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;Lcom/sekai/bank/models/Transaction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;

    iput-object p2, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/sekai/bank/models/Transaction;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;

    iget-object v1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/sekai/bank/models/Transaction;

    invoke-virtual {v0, v1, p1}, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->lambda$bind$0$com-sekai-bank-ui-transactions-TransactionAdapter$TransactionViewHolder(Lcom/sekai/bank/models/Transaction;Landroid/view/View;)V

    return-void
.end method
