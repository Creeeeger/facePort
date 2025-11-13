.class public final synthetic Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/SystemUIApplication;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/SystemUIApplication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/SystemUIApplication;

    return-void
.end method


# virtual methods
.method public final onBootAnimationFinished()V
    .locals 7

    sget v0, Lcom/android/systemui/SystemUIApplication;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/TreeMap;

    new-instance v0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/SysUIComponent;->getPostStartables()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mPostServicesStarted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/systemui/CoreStartable;

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mPostServices:[Lcom/android/systemui/CoreStartable;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemUIPostBootTiming "

    const-wide/16 v3, 0x1000

    invoke-direct {v0, v1, v3, v4}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v3, "StartPostServices "

    invoke-virtual {v0, v3}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/SystemUIApplication;->mPostServices:[Lcom/android/systemui/CoreStartable;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/SystemUIApplication;->startServicesImpl(Ljava/util/Map;Ljava/lang/String;[Lcom/android/systemui/CoreStartable;Ljava/lang/String;Landroid/util/TimingsTraceLog;)V

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mPostServicesStarted:Z

    :goto_0
    return-void
.end method
