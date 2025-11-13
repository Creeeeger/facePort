.class public Lcom/samsung/android/app/SemMultiWindowManager;
.super Ljava/lang/Object;
.source "SemMultiWindowManager.java"


# static fields
.field public static final whitelist MODE_FREEFORM:I = 0x1

.field public static final whitelist MODE_NONE:I = 0x0

.field public static final whitelist MODE_PICTURE_IN_PICTURE:I = 0x4

.field public static final whitelist MODE_SPLIT_SCREEN:I = 0x2


# instance fields
.field private blacklist mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 78
    return-void
.end method


# virtual methods
.method public whitelist getMode()I
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/SemMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiWindowModeStates(I)I

    move-result v0

    return v0
.end method

.method public whitelist getSupportedModes(Landroid/content/pm/ResolveInfo;)I
    .locals 1
    .param p1, "rInfo"    # Landroid/content/pm/ResolveInfo;

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/SemMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportedMultiWindowModes(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method

.method public whitelist setMultiWindowEnabled(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/SemMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const-string v1, "SEM_API"

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 94
    return-void
.end method
