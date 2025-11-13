.class public final Lcom/android/systemui/controls/controller/ControlInfo$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlInfo$Companion;-><init>()V

    return-void
.end method

.method public static fromControl(Landroid/service/controls/Control;)Lcom/android/systemui/controls/controller/ControlInfo;
    .locals 9

    new-instance v8, Lcom/android/systemui/controls/controller/ControlInfo;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Landroid/service/controls/Control;->getDeviceType()I

    move-result v4

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/controls/controller/ControlInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/controls/CustomControl;->getLayoutType()I

    move-result p0

    iput p0, v8, Lcom/android/systemui/controls/controller/ControlInfo;->layoutType:I

    return-object v8
.end method
