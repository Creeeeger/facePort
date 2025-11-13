.class public final Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController;


# instance fields
.field public final context:Landroid/content/Context;

.field public density:I

.field public displayDeviceType:I

.field public fontScale:F

.field public final inCarMode:Z

.field public final lastConfig:Landroid/content/res/Configuration;

.field public layoutDirection:I

.field public final listeners:Ljava/util/List;

.field public localeList:Landroid/os/LocaleList;

.field public final maxBounds:Landroid/graphics/Rect;

.field public orientation:I

.field public smallestScreenWidth:I

.field public uiMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->lastConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->maxBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->context:Landroid/content/Context;

    iget p1, v1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->fontScale:F

    iget p1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->density:I

    iget p1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->smallestScreenWidth:I

    iget-object p1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, p1, 0xf

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->inCarMode:Z

    and-int/lit8 p1, p1, 0x30

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->uiMode:I

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->localeList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->layoutDirection:I

    sget-boolean p1, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-eqz p1, :cond_1

    iget p1, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->displayDeviceType:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onDensityOrFontScaleChanged()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getNightModeName()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    if-eqz p0, :cond_2

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const-string p0, "err"

    goto :goto_0

    :cond_0
    const-string p0, "night"

    goto :goto_0

    :cond_1
    const-string p0, "day"

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "undefined"

    :goto_0
    return-object p0
.end method

.method public final isLayoutRtl()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->layoutDirection:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onConfigChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->uiMode:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    iget v7, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->density:I

    if-ne v2, v7, :cond_3

    iget v7, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->fontScale:F

    cmpg-float v7, v0, v7

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->inCarMode:Z

    if-eqz v7, :cond_6

    if-eqz v4, :cond_6

    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onDensityOrFontScaleChanged()V

    goto :goto_2

    :cond_5
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->density:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->fontScale:F

    :cond_6
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->smallestScreenWidth:I

    if-eq v0, v2, :cond_8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->smallestScreenWidth:I

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onSmallestScreenWidthChanged()V

    goto :goto_3

    :cond_8
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->maxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->maxBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onMaxBoundsChanged()V

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->localeList:Landroid/os/LocaleList;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->localeList:Landroid/os/LocaleList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onLocaleListChanged()V

    goto :goto_5

    :cond_c
    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-eqz v0, :cond_e

    iget v0, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->displayDeviceType:I

    if-eq v0, v2, :cond_e

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->displayDeviceType:I

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onDisplayDeviceTypeChanged()V

    goto :goto_6

    :cond_e
    if-eqz v4, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I

    move-result v2

    invoke-virtual {v0, v2, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    iput v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->uiMode:I

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onUiModeChanged()V

    goto :goto_7

    :cond_10
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->layoutDirection:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-eq v0, v2, :cond_13

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->layoutDirection:I

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->layoutDirection:I

    if-ne v3, v6, :cond_12

    move v3, v6

    goto :goto_9

    :cond_12
    move v3, v5

    :goto_9
    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onLayoutDirectionChanged(Z)V

    goto :goto_8

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->lastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onThemeChanged()V

    goto :goto_a

    :cond_15
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->orientation:I

    if-eq v0, p1, :cond_17

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->orientation:I

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->orientation:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onOrientationChanged(I)V

    goto :goto_b

    :cond_17
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
