.class public final Lcom/android/systemui/navigationbar/layout/LayoutProviderContainerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/layout/LayoutProviderContainerImpl;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final updateLayoutProvider(ZZ)Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;
    .locals 2

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/LayoutProviderContainerImpl;->context:Landroid/content/Context;

    const-string p2, "display"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    const-string v0, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {p2, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget-object p2, p2, v1

    invoke-virtual {p0, p2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    :cond_0
    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/layout/CoverLayoutProviderImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    new-instance p1, Lcom/android/systemui/navigationbar/layout/LayoutProviderImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/LayoutProviderContainerImpl;->context:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/layout/LayoutProviderImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/LayoutProviderContainerImpl;->context:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object p1
.end method
