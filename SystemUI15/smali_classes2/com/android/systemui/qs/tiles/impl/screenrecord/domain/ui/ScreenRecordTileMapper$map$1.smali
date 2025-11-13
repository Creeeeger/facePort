.class final Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper$map$1;
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
.field final synthetic $data:Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper;Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper$map$1;->$data:Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper;->resources:Landroid/content/res/Resources;

    const v1, 0x7f130f36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->supportedActions:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper$map$1;->$data:Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel;

    instance-of v1, v0, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$Recording;

    const v2, 0x7f080e3b

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper;

    iget-object v5, v1, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper;->resources:Landroid/content/res/Resources;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper;->theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    new-instance v1, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper$map$1$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper$map$1$1;-><init>(Lcom/android/systemui/common/shared/model/Icon$Loaded;)V

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$None;->INSTANCE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$None;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper;->resources:Landroid/content/res/Resources;

    const v0, 0x7f130f38

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_0
    instance-of v1, v0, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$Starting;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper;

    iget-object v5, v1, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper;->resources:Landroid/content/res/Resources;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper;->theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    new-instance v1, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper$map$1$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper$map$1$2;-><init>(Lcom/android/systemui/common/shared/model/Icon$Loaded;)V

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper$map$1;->$data:Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel;

    check-cast p0, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$Starting;

    iget-wide v0, p0, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$Starting;->millisUntilStarted:J

    const/16 p0, 0x1f4

    int-to-long v4, p0

    add-long/2addr v0, v4

    const/16 p0, 0x3e8

    invoke-static {v0, v1, p0}, Ljava/lang/Math;->floorDiv(JI)J

    move-result-wide v0

    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$None;->INSTANCE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$None;

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    sget p0, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%d..."

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    instance-of v0, v0, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$DoingNothing;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    const v0, 0x7f080e3a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    new-instance v1, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper;

    iget-object v5, v2, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper;->resources:Landroid/content/res/Resources;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper;->theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper$map$1$3;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper$map$1$3;-><init>(Lcom/android/systemui/common/shared/model/Icon$Loaded;)V

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$Chevron;->INSTANCE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$Chevron;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/ui/ScreenRecordTileMapper;->resources:Landroid/content/res/Resources;

    const v0, 0x7f130f37

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    :cond_2
    :goto_0
    iget-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_3
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, ", "

    aput-object v0, p0, v3

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    invoke-static {p0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_1
    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->contentDescription:Ljava/lang/CharSequence;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
