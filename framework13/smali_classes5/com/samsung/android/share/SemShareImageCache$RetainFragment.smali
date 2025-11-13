.class public Lcom/samsung/android/share/SemShareImageCache$RetainFragment;
.super Landroid/app/Fragment;
.source "SemShareImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SemShareImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetainFragment"
.end annotation


# instance fields
.field private blacklist mObject:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 547
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 548
    return-void
.end method


# virtual methods
.method public blacklist getObject()Ljava/lang/Object;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageCache$RetainFragment;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 552
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 555
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/share/SemShareImageCache$RetainFragment;->setRetainInstance(Z)V

    .line 556
    return-void
.end method

.method public blacklist setObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 564
    iput-object p1, p0, Lcom/samsung/android/share/SemShareImageCache$RetainFragment;->mObject:Ljava/lang/Object;

    .line 565
    return-void
.end method
