.class Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;
.super Lcom/android/internal/telephony/IDomainSelector$Stub;
.source "DomainSelectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IDomainSelectorAdapter"
.end annotation


# instance fields
.field private final blacklist mDomainSelectorWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/DomainSelector;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$1:Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;Landroid/telephony/DomainSelector;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->this$1:Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;

    invoke-direct {p0}, Lcom/android/internal/telephony/IDomainSelector$Stub;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->mDomainSelectorWeakRef:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic blacklist lambda$finishSelection$1(Landroid/telephony/DomainSelector;)V
    .locals 0

    invoke-interface {p0}, Landroid/telephony/DomainSelector;->finishSelection()V

    return-void
.end method

.method static synthetic blacklist lambda$reselectDomain$0(Landroid/telephony/DomainSelector;Landroid/telephony/DomainSelectionService$SelectionAttributes;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/DomainSelector;->reselectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;)V

    return-void
.end method


# virtual methods
.method public blacklist finishSelection()V
    .locals 6

    iget-object v0, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->mDomainSelectorWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/DomainSelector;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->this$1:Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;

    iget-object v1, v1, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;->this$0:Landroid/telephony/DomainSelectionService;

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/DomainSelector;)V

    const-string v4, "DomainSelectorWrapper"

    const-string v5, "finishSelection"

    invoke-static {v1, v2, v3, v4, v5}, Landroid/telephony/DomainSelectionService;->-$$Nest$mexecuteMethodAsyncNoException(Landroid/telephony/DomainSelectionService;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist reselectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;)V
    .locals 6

    iget-object v0, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->mDomainSelectorWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/DomainSelector;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->this$1:Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;

    iget-object v1, v1, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;->this$0:Landroid/telephony/DomainSelectionService;

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, p1}, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/DomainSelector;Landroid/telephony/DomainSelectionService$SelectionAttributes;)V

    const-string v4, "DomainSelectorWrapper"

    const-string/jumbo v5, "reselectDomain"

    invoke-static {v1, v2, v3, v4, v5}, Landroid/telephony/DomainSelectionService;->-$$Nest$mexecuteMethodAsyncNoException(Landroid/telephony/DomainSelectionService;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
