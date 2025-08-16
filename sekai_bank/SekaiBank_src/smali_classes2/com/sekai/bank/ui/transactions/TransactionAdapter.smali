.class public Lcom/sekai/bank/ui/transactions/TransactionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TransactionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sekai/bank/ui/transactions/TransactionAdapter$OnTransactionClickListener;,
        Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private clickListener:Lcom/sekai/bank/ui/transactions/TransactionAdapter$OnTransactionClickListener;

.field private currentUserId:Ljava/lang/String;

.field private isLoadingMore:Z

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
.method static bridge synthetic -$$Nest$fgetclickListener(Lcom/sekai/bank/ui/transactions/TransactionAdapter;)Lcom/sekai/bank/ui/transactions/TransactionAdapter$OnTransactionClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->clickListener:Lcom/sekai/bank/ui/transactions/TransactionAdapter$OnTransactionClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentUserId(Lcom/sekai/bank/ui/transactions/TransactionAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->currentUserId:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->isLoadingMore:Z

    .line 32
    iput-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->transactions:Ljava/util/List;

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->currentUserId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->isLoadingMore:Z

    .line 27
    iput-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->transactions:Ljava/util/List;

    .line 28
    iput-object p2, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->currentUserId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 15
    check-cast p1, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->onBindViewHolder(Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;I)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->transactions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sekai/bank/models/Transaction;

    .line 66
    invoke-virtual {p1, p2}, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;->bind(Lcom/sekai/bank/models/Transaction;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;
    .locals 1

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    .line 58
    invoke-static {p2, p1, v0}, Lcom/sekai/bank/databinding/ItemTransactionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sekai/bank/databinding/ItemTransactionBinding;

    move-result-object p1

    .line 60
    new-instance p2, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sekai/bank/ui/transactions/TransactionAdapter$TransactionViewHolder;-><init>(Lcom/sekai/bank/ui/transactions/TransactionAdapter;Lcom/sekai/bank/databinding/ItemTransactionBinding;)V

    return-object p2
.end method

.method public setCurrentUserId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->currentUserId:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setLoadingMore(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->isLoadingMore:Z

    .line 47
    invoke-virtual {p0}, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnTransactionClickListener(Lcom/sekai/bank/ui/transactions/TransactionAdapter$OnTransactionClickListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->clickListener:Lcom/sekai/bank/ui/transactions/TransactionAdapter$OnTransactionClickListener;

    return-void
.end method

.method public updateTransactions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->transactions:Ljava/util/List;

    .line 42
    invoke-virtual {p0}, Lcom/sekai/bank/ui/transactions/TransactionAdapter;->notifyDataSetChanged()V

    return-void
.end method
