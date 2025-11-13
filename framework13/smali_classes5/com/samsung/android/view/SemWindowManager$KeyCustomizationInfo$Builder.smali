.class public Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;
.super Ljava/lang/Object;
.source "SemWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist action:I

.field private blacklist dispatching:I

.field private blacklist id:I

.field private blacklist intent:Landroid/content/Intent;

.field private blacklist keyCode:I

.field private blacklist ownerPackage:Ljava/lang/String;

.field private blacklist press:I

.field private blacklist userId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetaction(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->action:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdispatching(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->dispatching:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetid(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->id:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetintent(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetkeyCode(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->keyCode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetownerPackage(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->ownerPackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpress(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->press:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetuserId(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->userId:I

    return p0
.end method

.method public constructor whitelist <init>(IIILandroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .param p1, "press"    # I
    .param p2, "keyCode"    # I
    .param p3, "action"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "ownerPackage"    # Ljava/lang/String;

    .line 1425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1363
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->press:I

    .line 1368
    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->id:I

    .line 1373
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->keyCode:I

    .line 1378
    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->action:I

    .line 1383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->intent:Landroid/content/Intent;

    .line 1388
    iput v1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->dispatching:I

    .line 1393
    const/4 v1, -0x2

    iput v1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->userId:I

    .line 1398
    iput-object v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->ownerPackage:Ljava/lang/String;

    .line 1426
    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 1427
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent is null. When the action is not ACTION_BLOCK_KEY_EVENT, you have to add intent parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1431
    :cond_1
    :goto_0
    iput p1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->press:I

    .line 1432
    iput p2, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->keyCode:I

    .line 1433
    iput p3, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->action:I

    .line 1434
    iput-object p4, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->intent:Landroid/content/Intent;

    .line 1435
    iput-object p5, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->ownerPackage:Ljava/lang/String;

    .line 1436
    return-void
.end method


# virtual methods
.method public whitelist build()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 2

    .line 1443
    new-instance v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo-IA;)V

    return-object v0
.end method

.method public whitelist setDispatching(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;
    .locals 0
    .param p1, "dispatching"    # I

    .line 1458
    iput p1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->dispatching:I

    .line 1459
    return-object p0
.end method

.method public whitelist setUserId(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;
    .locals 0
    .param p1, "userId"    # I

    .line 1471
    iput p1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->userId:I

    .line 1472
    return-object p0
.end method
