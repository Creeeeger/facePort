.class public final synthetic Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportedMultiWindowModes(Landroid/content/pm/ActivityInfo;)I

    move-result p0

    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
