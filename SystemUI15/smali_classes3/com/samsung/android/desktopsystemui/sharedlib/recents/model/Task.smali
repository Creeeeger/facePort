.class public Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TAG:Ljava/lang/String; = "[DS]Task"


# instance fields
.field public colorBackground:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public colorPrimary:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public icon:Landroid/graphics/drawable/Drawable;

.field public isDockable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isLocked:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public key:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "key_"
    .end annotation
.end field

.field public taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public thumbnail:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/ThumbnailData;

.field public title:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public titleDescription:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public topActivity:Landroid/content/ComponentName;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->key:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    new-instance p1, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {p1}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;IIZZLandroid/app/ActivityManager$TaskDescription;Landroid/content/ComponentName;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->key:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    iput p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->colorPrimary:I

    iput p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->colorBackground:I

    iput-object p6, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-boolean p4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->isDockable:Z

    iput-boolean p5, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->isLocked:Z

    iput-object p7, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;)V
    .locals 8

    iget-object v1, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->key:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    iget v2, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->colorPrimary:I

    iget v3, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->colorBackground:I

    iget-boolean v4, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->isDockable:Z

    iget-boolean v5, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->isLocked:Z

    iget-object v6, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v7, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;IIZZLandroid/app/ActivityManager$TaskDescription;Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->key:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->isDockable:Z

    if-nez p1, :cond_0

    const-string p1, " dockable=N"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->isLocked:Z

    if-eqz p1, :cond_1

    const-string p1, " locked=Y"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->key:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    iget-object p1, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->key:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getTopComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->key:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->key:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->key:Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
