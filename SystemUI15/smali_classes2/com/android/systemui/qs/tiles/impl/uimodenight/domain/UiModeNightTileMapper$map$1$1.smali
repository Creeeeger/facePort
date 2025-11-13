.class final Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$map$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $this_with:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$map$1$1;->$this_with:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$map$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$map$1$1;->$this_with:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;

    iget-boolean v1, v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;->isPowerSave:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$map$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->resources:Landroid/content/res/Resources;

    const v1, 0x7f130ed4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    goto/16 :goto_5

    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;->isNightMode:Z

    iget v6, v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;->uiMode:I

    if-nez v6, :cond_2

    iget-boolean v7, v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;->isLocationEnabled:Z

    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$map$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->resources:Landroid/content/res/Resources;

    if-eqz v1, :cond_1

    const v1, 0x7f130eda

    goto :goto_0

    :cond_1
    const v1, 0x7f130ed7

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_2
    if-ne v6, v2, :cond_9

    iget v6, v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;->nightModeCustomType:I

    if-nez v6, :cond_6

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;->customNightModeEnd:Ljava/time/LocalTime;

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;->customNightModeStart:Ljava/time/LocalTime;

    :goto_1
    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;->is24HourFormat:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->Companion:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->formatter24Hour:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->Companion:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->formatter12Hour:Ljava/time/format/DateTimeFormatter;

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$map$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;

    iget-object v6, v6, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->resources:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$map$1$1;->$this_with:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;

    iget-boolean v7, v7, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;->isNightMode:Z

    if-eqz v7, :cond_5

    const v7, 0x7f130ed8

    goto :goto_3

    :cond_5
    const v7, 0x7f130ed5

    :goto_3
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_6
    if-ne v6, v4, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$map$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->resources:Landroid/content/res/Resources;

    if-eqz v1, :cond_7

    const v1, 0x7f130ed9

    goto :goto_4

    :cond_7
    const v1, 0x7f130ed6

    :goto_4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    :goto_5
    move v0, v5

    goto :goto_7

    :cond_8
    iput-object v3, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    :goto_6
    move v0, v4

    goto :goto_7

    :cond_9
    iput-object v3, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_6

    :goto_7
    iget-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v6, 0x2

    if-eqz v1, :cond_a

    iget-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    goto :goto_8

    :cond_a
    new-array v1, v2, [Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    aput-object v2, v1, v5

    const-string v2, ", "

    aput-object v2, v1, v4

    iget-object v2, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    aput-object v2, v1, v6

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_8
    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->contentDescription:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$map$1$1;->$this_with:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;

    iget-boolean v2, v1, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;->isPowerSave:Z

    const v7, 0x7f03008d

    if-eqz v2, :cond_b

    sget-object v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->UNAVAILABLE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$map$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_b

    :cond_b
    iget-boolean v1, v1, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;->isNightMode:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    goto :goto_9

    :cond_c
    sget-object v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    :goto_9
    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    if-ne v1, v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$map$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    goto :goto_a

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$map$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    :goto_a
    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    :cond_e
    :goto_b
    iget-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    sget-object v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    if-ne v0, v1, :cond_f

    const v0, 0x7f080e18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    :cond_f
    const v0, 0x7f080e17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_c
    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    new-instance v1, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$map$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$map$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper;->theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v0, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    new-instance p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$map$1$1$1;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/UiModeNightTileMapper$map$1$1$1;-><init>(Lcom/android/systemui/common/shared/model/Icon$Loaded;)V

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

    iget-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->UNAVAILABLE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    if-ne p0, v0, :cond_10

    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->LONG_CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_d

    :cond_10
    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->LONG_CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    filled-new-array {p0, v0}, [Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    :goto_d
    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->supportedActions:Ljava/util/Set;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
