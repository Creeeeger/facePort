.class public Landroid/widget/RemoteViews$RemoteResponse;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$RemoteResponse$InteractionType;
    }
.end annotation


# static fields
.field public static final blacklist INTERACTION_TYPE_CHECKED_CHANGE:I = 0x1

.field public static final blacklist INTERACTION_TYPE_CLICK:I


# instance fields
.field private blacklist mElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFillIntent:Landroid/content/Intent;

.field private blacklist mInteractionType:I

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mViewIds:Landroid/util/IntArray;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingIntent(Landroid/widget/RemoteViews$RemoteResponse;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->handleViewInteraction(Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreadFromParcel(Landroid/widget/RemoteViews$RemoteResponse;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$RemoteResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteResponse;Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smfromPendingIntentTemplateAndFillInIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;
    .locals 0

    invoke-static {p0, p1}, Landroid/widget/RemoteViews$RemoteResponse;->fromPendingIntentTemplateAndFillInIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    return-void
.end method

.method public static whitelist fromFillInIntent(Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$RemoteResponse;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteResponse;-><init>()V

    iput-object p0, v0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static whitelist fromPendingIntent(Landroid/app/PendingIntent;)Landroid/widget/RemoteViews$RemoteResponse;
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$RemoteResponse;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteResponse;-><init>()V

    iput-object p0, v0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method private static blacklist fromPendingIntentTemplateAndFillInIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$RemoteResponse;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteResponse;-><init>()V

    iput-object p0, v0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object p1, v0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private static blacklist getAdapterViewAncestor(Landroid/view/View;)Landroid/widget/AdapterView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :goto_0
    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/widget/AdapterView;

    if-nez v2, :cond_2

    instance-of v2, v1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_2
    instance-of v2, v1, Landroid/widget/AdapterView;

    if-eqz v2, :cond_3

    move-object v0, v1

    check-cast v0, Landroid/widget/AdapterView;

    :cond_3
    return-object v0
.end method

.method private blacklist handleViewInteraction(Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    const-string v1, "RemoteViews"

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/widget/RemoteViews$RemoteResponse;->getAdapterViewAncestor(Landroid/view/View;)Landroid/widget/AdapterView;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "Collection item doesn\'t have AdapterView parent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/app/PendingIntent;

    if-nez v2, :cond_2

    const-string v2, "Attempting setOnClickFillInIntent or setOnCheckedChangeFillInIntent without calling setPendingIntentTemplate on parent."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    nop

    :goto_0
    invoke-interface {p2, p1, v0, p0}, Landroid/widget/RemoteViews$InteractionHandler;->onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    return-void

    :cond_3
    const-string v0, "Response has neither pendingIntent nor fillInIntent"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-static {p1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_1
    iget v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist addSharedElement(ILjava/lang/String;)Landroid/widget/RemoteViews$RemoteResponse;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/content/Intent;",
            "Landroid/app/ActivityOptions;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_0
    invoke-static {p1}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    instance-of v1, p1, Landroid/widget/CompoundButton;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    if-ne v1, v2, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const-string v3, "android.widget.extra.CHECKED"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11101f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const/high16 v5, 0x10000000

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v6, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    sget-object v8, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v3, v6, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    const/16 v9, 0x1a

    invoke-virtual {v8, v9, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v9, :cond_2

    invoke-static {v3, v9, v7}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    :cond_2
    if-nez v1, :cond_4

    iget-object v4, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    :goto_1
    if-eqz v4, :cond_3

    instance-of v6, v4, Landroid/appwidget/AppWidgetHostView;

    if-nez v6, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Landroid/view/View;

    goto :goto_1

    :cond_3
    instance-of v6, v4, Landroid/appwidget/AppWidgetHostView;

    if-eqz v6, :cond_4

    move-object v6, v4

    check-cast v6, Landroid/appwidget/AppWidgetHostView;

    iget-object v7, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    invoke-virtual {v7}, Landroid/util/IntArray;->toArray()[I

    move-result-object v7

    iget-object v8, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v0}, Landroid/appwidget/AppWidgetHostView;->createSharedElementActivityOptions([I[Ljava/lang/String;Landroid/content/Intent;)Landroid/app/ActivityOptions;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    const-string v5, "RemoteViews"

    const-string v6, "getLaunchOptions: view.getDisplay() is null!"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method public blacklist setInteractionType(I)Landroid/widget/RemoteViews$RemoteResponse;
    .locals 0

    iput p1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    return-object p0
.end method
