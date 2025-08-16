.class Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TransactionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sekai/bank/ui/transactions/TransactionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransactionViewHolder"
.end annotation


# instance fields
.field private final binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

.field private final currencyFormat:Ljava/text/NumberFormat;

.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field final synthetic this$0:Lcom/sekai/bank/ui/transactions/TransactionAdapter;


# direct methods
.method public constructor <init>(Lcom/sekai/bank/ui/transactions/TransactionAdapter;Lcom/sekai/bank/databinding/ItemTransactionBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->this$0:Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    .line 80
    invoke-virtual {p2}, Lcom/sekai/bank/databinding/ItemTransactionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 81
    iput-object p2, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

    .line 82
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->currencyFormat:Ljava/text/NumberFormat;

    .line 83
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "MMM dd, HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public bind(Lcom/sekai/bank/models/Transaction;)V
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->this$0:Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    invoke-static {v0}, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->-$$Nest$fgetcurrentUserId(Lcom/sekai/bank/ui/transactions/TransactionAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sekai/bank/models/Transaction;->isSent(Ljava/lang/String;)Z

    move-result v0

    .line 88
    iget-object v1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->this$0:Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    invoke-static {v1}, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->-$$Nest$fgetcurrentUserId(Lcom/sekai/bank/ui/transactions/TransactionAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sekai/bank/models/Transaction;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ItemTransactionBinding;->transactionTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/sekai/bank/R$string;->transaction_sent_to:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ItemTransactionBinding;->transactionIcon:Landroidx/appcompat/widget/AppCompatImageView;

    sget v1, Lcom/sekai/bank/R$drawable;->ic_sent:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 94
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ItemTransactionBinding;->transactionIcon:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sekai/bank/R$color;->transaction_sent:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setColorFilter(I)V

    .line 97
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ItemTransactionBinding;->transactionAmount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->currencyFormat:Ljava/text/NumberFormat;

    invoke-virtual {p1}, Lcom/sekai/bank/models/Transaction;->getAmount()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ItemTransactionBinding;->transactionAmount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sekai/bank/R$color;->transaction_sent:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ItemTransactionBinding;->transactionTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/sekai/bank/R$string;->transaction_received_from:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ItemTransactionBinding;->transactionIcon:Landroidx/appcompat/widget/AppCompatImageView;

    sget v1, Lcom/sekai/bank/R$drawable;->ic_received:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 102
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ItemTransactionBinding;->transactionIcon:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sekai/bank/R$color;->transaction_received:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setColorFilter(I)V

    .line 105
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ItemTransactionBinding;->transactionAmount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->currencyFormat:Ljava/text/NumberFormat;

    invoke-virtual {p1}, Lcom/sekai/bank/models/Transaction;->getAmount()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ItemTransactionBinding;->transactionAmount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sekai/bank/R$color;->transaction_received:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ItemTransactionBinding;->transactionDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/sekai/bank/models/Transaction;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p1}, Lcom/sekai/bank/models/Transaction;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sekai/bank/models/Transaction;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ItemTransactionBinding;->transactionMessage:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sekai/bank/models/Transaction;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ItemTransactionBinding;->transactionMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ItemTransactionBinding;->transactionMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :goto_1
    sget-object v0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$1;->$SwitchMap$com$sekai$bank$models$Transaction$TransactionStatus:[I

    invoke-virtual {p1}, Lcom/sekai/bank/models/Transaction;->getStatus()Lcom/sekai/bank/models/Transaction$TransactionStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sekai/bank/models/Transaction$TransactionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ItemTransactionBinding;->statusIndicator:Landroid/view/View;

    iget-object v1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sekai/bank/R$color;->error_red:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ItemTransactionBinding;->statusIndicator:Landroid/view/View;

    iget-object v1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sekai/bank/R$color;->warning_orange:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ItemTransactionBinding;->statusIndicator:Landroid/view/View;

    iget-object v1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sekai/bank/R$color;->success_green:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 134
    :goto_2
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->binding:Lcom/sekai/bank/databinding/ItemTransactionBinding;

    invoke-virtual {v0}, Lcom/sekai/bank/databinding/ItemTransactionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;Lcom/sekai/bank/models/Transaction;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$bind$0$com-sekai-bank-ui-transactions-TransactionAdapter$TransactionViewHolder(Lcom/sekai/bank/models/Transaction;Landroid/view/View;)V
    .locals 0

    .line 135
    iget-object p2, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->this$0:Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    invoke-static {p2}, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->-$$Nest$fgetclickListener(Lcom/sekai/bank/ui/transactions/TransactionAdapter;)Lcom/sekai/bank/ui/transactions/TransactionAdapter$OnTransactionClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 136
    iget-object p2, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->this$0:Lcom/sekai/bank/ui/transactions/TransactionAdapter;

    invoke-static {p2}, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->-$$Nest$fgetclickListener(Lcom/sekai/bank/ui/transactions/TransactionAdapter;)Lcom/sekai/bank/ui/transactions/TransactionAdapter$OnTransactionClickListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sekai/bank/ui/transactions/TransactionAdapter$OnTransactionClickListener;->onTransactionClick(Lcom/sekai/bank/models/Transaction;)V

    :cond_0
    return-void
.end method
