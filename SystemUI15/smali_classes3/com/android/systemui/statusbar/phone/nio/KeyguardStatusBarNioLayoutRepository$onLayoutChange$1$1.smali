.class public final Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onLayoutChange$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $left:I

.field public final synthetic $right:I

.field public final synthetic $this_apply:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;ILcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onLayoutChange$1$1;->$this_apply:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onLayoutChange$1$1;->$right:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onLayoutChange$1$1;->this$0:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    iput p4, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onLayoutChange$1$1;->$left:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onLayoutChange$1$1;->$this_apply:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isRtl:Z

    const v2, 0x7f07049b

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onLayoutChange$1$1;->$right:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onLayoutChange$1$1;->this$0:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->context:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticOutline0;->m(Landroid/content/Context;II)I

    move-result v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onLayoutChange$1$1;->$left:I

    sub-int/2addr v1, p0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onLayoutChange$1$1;->$right:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onLayoutChange$1$1;->this$0:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->context:Landroid/content/Context;

    invoke-static {p0, v2, v1}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticOutline0;->m(Landroid/content/Context;II)I

    move-result v1

    :goto_0
    iget p0, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->containerStartX:I

    if-eq p0, v1, :cond_1

    iput v1, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->containerStartX:I

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isUpdatedModel:Z

    :cond_1
    return-void
.end method
