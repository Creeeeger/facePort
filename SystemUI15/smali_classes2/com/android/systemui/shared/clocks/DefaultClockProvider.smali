.class public final Lcom/android/systemui/shared/clocks/DefaultClockProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/clocks/ClockProvider;


# instance fields
.field public final ctx:Landroid/content/Context;

.field public final hasStepClockAnimation:Z

.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public messageBuffers:Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;

.field public final migratedClocks:Z

.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/content/res/Resources;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->layoutInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->resources:Landroid/content/res/Resources;

    iput-boolean p4, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->hasStepClockAnimation:Z

    iput-boolean p5, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->migratedClocks:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/content/res/Resources;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/shared/clocks/DefaultClockProvider;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/content/res/Resources;ZZ)V

    return-void
.end method


# virtual methods
.method public final createClock(Lcom/android/systemui/plugins/clocks/ClockSettings;)Lcom/android/systemui/plugins/clocks/ClockController;
    .locals 9

    invoke-virtual {p1}, Lcom/android/systemui/plugins/clocks/ClockSettings;->getClockId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEFAULT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/shared/clocks/DefaultClockController;

    iget-object v2, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->resources:Landroid/content/res/Resources;

    iget-boolean v7, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->migratedClocks:Z

    iget-object v8, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->messageBuffers:Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;

    iget-boolean v6, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->hasStepClockAnimation:Z

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/shared/clocks/DefaultClockController;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Lcom/android/systemui/plugins/clocks/ClockSettings;ZZLcom/android/systemui/plugins/clocks/ClockMessageBuffers;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/android/systemui/plugins/clocks/ClockSettings;->getClockId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/shared/clocks/DefaultClockProviderKt;->TAG:Ljava/lang/String;

    const-string v1, " is unsupported by "

    invoke-static {p1, v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getClockThumbnail(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "DEFAULT"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->resources:Landroid/content/res/Resources;

    const p1, 0x7f0806fb

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/android/systemui/shared/clocks/DefaultClockProviderKt;->TAG:Ljava/lang/String;

    const-string v1, " is unsupported by "

    invoke-static {p1, v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getClocks()Ljava/util/List;
    .locals 1

    new-instance p0, Lcom/android/systemui/plugins/clocks/ClockMetadata;

    const-string v0, "DEFAULT"

    invoke-direct {p0, v0}, Lcom/android/systemui/plugins/clocks/ClockMetadata;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final initialize(Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->messageBuffers:Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;

    return-void
.end method
