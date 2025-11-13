.class public Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final TAG:Ljava/lang/String; = "[DSU]InteractionHandlerWrapper"

.field private static final instance:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;->instance:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;->instance:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;

    return-object v0
.end method


# virtual methods
.method public applyInteractionHandler(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper$1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
