.class final Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper$map$1;
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
.field final synthetic $data:Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper;Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper;->resources:Landroid/content/res/Resources;

    const v1, 0x7f130f1f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    sget-object v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->LONG_CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    filled-new-array {v0, v1}, [Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->supportedActions:Ljava/util/Set;

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$None;->INSTANCE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$None;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    const v0, 0x7f080e2b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    const v0, 0x7f080e2a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    :goto_0
    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper;->resources:Landroid/content/res/Resources;

    iget-object v2, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper;->theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    new-instance v1, Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper$map$1$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper$map$1$1;-><init>(Lcom/android/systemui/common/shared/model/Icon$Loaded;)V

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel;

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper;->resources:Landroid/content/res/Resources;

    instance-of v3, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeTwilight;

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeTwilight;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeTwilight;->isLocationEnabled:Z

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    check-cast p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeTwilight;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeTwilight;->isActivated:Z

    if-eqz p0, :cond_2

    const p0, 0x7f130f22

    goto :goto_1

    :cond_2
    const p0, 0x7f130f21

    :goto_1
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :cond_3
    instance-of v3, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeOff;

    if-eqz v3, :cond_5

    const v0, 0x7f030099

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    check-cast p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeOff;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeOff;->isActivated:Z

    if-eqz p0, :cond_4

    move p0, v5

    goto :goto_2

    :cond_4
    move p0, v4

    :goto_2
    aget-object v2, v0, p0

    goto :goto_6

    :cond_5
    instance-of v3, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;

    if-eqz v3, :cond_b

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;

    iget-boolean v3, v3, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->isActivated:Z

    if-eqz v3, :cond_7

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->endTime:Ljava/time/LocalTime;

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    const v6, 0x7f130f3d

    goto :goto_3

    :cond_7
    move-object v3, p0

    check-cast v3, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->startTime:Ljava/time/LocalTime;

    if-nez v3, :cond_8

    goto :goto_6

    :cond_8
    const v6, 0x7f130f20

    :goto_3
    :try_start_0
    check-cast p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel$AutoModeCustom;->is24HourFormat:Z

    if-eqz p0, :cond_9

    sget-object p0, Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper;->formatter24Hour:Ljava/time/format/DateTimeFormatter;

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_9
    sget-object p0, Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper;->formatter12Hour:Ljava/time/format/DateTimeFormatter;

    :goto_4
    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v6, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    invoke-virtual {p0}, Ljava/time/DateTimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper;->formatter12Hour:Ljava/time/format/DateTimeFormatter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper;->logger:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->logWarning(Ljava/lang/String;)V

    :goto_6
    iput-object v2, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    iget-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    goto :goto_7

    :cond_a
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, ", "

    aput-object v0, p0, v4

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    aput-object v0, p0, v5

    invoke-static {p0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_7
    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->contentDescription:Ljava/lang/CharSequence;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
