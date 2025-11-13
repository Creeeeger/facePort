.class final Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$createActionsFromState$customActions$1;
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
.field final synthetic $controller:Landroid/media/session/MediaController;

.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic $state:Landroid/media/session/PlaybackState;

.field final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Landroid/media/session/PlaybackState;Ljava/lang/String;Landroid/media/session/MediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$createActionsFromState$customActions$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$createActionsFromState$customActions$1;->$state:Landroid/media/session/PlaybackState;

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$createActionsFromState$customActions$1;->$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$createActionsFromState$customActions$1;->$controller:Landroid/media/session/MediaController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroid/media/session/PlaybackState$CustomAction;

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$createActionsFromState$customActions$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$createActionsFromState$customActions$1;->$packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$createActionsFromState$customActions$1;->$controller:Landroid/media/session/MediaController;

    sget-object v2, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->SMARTSPACE_UI_SURFACE_LABEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/media/controls/shared/model/MediaAction;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState$CustomAction;->getIcon()I

    move-result v3

    invoke-static {v1, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$getCustomAction$1;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$getCustomAction$1;-><init>(Landroid/media/session/MediaController;Landroid/media/session/PlaybackState$CustomAction;)V

    invoke-virtual {p1}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/media/controls/shared/model/MediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method
