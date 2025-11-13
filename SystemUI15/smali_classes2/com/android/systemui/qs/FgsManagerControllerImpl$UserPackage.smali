.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public backgroundRestrictionExemptionReason:I

.field public final packageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

.field public uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

.field public uiControlInitialized:Z

.field public final uid$delegate:Lkotlin/Lazy;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    iput-object p3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->packageName:Ljava/lang/String;

    new-instance p2, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage$uid$2;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage$uid$2;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uid$delegate:Lkotlin/Lazy;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->backgroundRestrictionExemptionReason:I

    sget-object p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;->NORMAL:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "UserPackage: ["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    const-string v2, "packageName="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->getUiControl()Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->backgroundRestrictionExemptionReason:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uiControl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (reason="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object p0, p1

    check-cast p0, Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    iget-object v0, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->packageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    iget p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final getUiControl()Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uiControlInitialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->updateUiControl()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->packageName:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final updateUiControl()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->activityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uid$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getBackgroundRestrictionExemptionReason(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->backgroundRestrictionExemptionReason:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    const/16 v2, 0xb

    if-eq v1, v2, :cond_3

    const/16 v2, 0x33

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_2

    const/16 v2, 0x41

    if-eq v1, v2, :cond_0

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_3

    const/16 v2, 0x13e

    if-eq v1, v2, :cond_3

    const/16 v2, 0x140

    if-eq v1, v2, :cond_3

    const/16 v2, 0x147

    if-eq v1, v2, :cond_3

    const/16 v2, 0x15e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x37

    if-eq v1, v2, :cond_3

    const/16 v2, 0x38

    if-eq v1, v2, :cond_3

    packed-switch v1, :pswitch_data_0

    sget-object v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;->NORMAL:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->showStopBtnForUserAllowlistedApps:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;->NORMAL:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;->HIDE_BUTTON:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;->HIDE_ENTRY:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    goto :goto_0

    :cond_3
    :pswitch_0
    sget-object v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;->HIDE_BUTTON:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    :goto_0
    iput-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uiControlInitialized:Z

    iget-object v0, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->secFgsManagerController:Lcom/android/systemui/qs/SecFgsManagerController;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateUiControl["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/qs/SecFgsManagerController;->log(Ljava/lang/String;)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x142
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
