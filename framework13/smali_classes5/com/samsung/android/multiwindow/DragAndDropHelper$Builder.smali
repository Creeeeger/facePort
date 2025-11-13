.class public Lcom/samsung/android/multiwindow/DragAndDropHelper$Builder;
.super Ljava/lang/Object;
.source "DragAndDropHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/DragAndDropHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mInitialDropTargetVisible:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$Builder;->mInitialDropTargetVisible:Z

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/samsung/android/multiwindow/DragAndDropHelper;
    .locals 3

    .line 106
    new-instance v0, Lcom/samsung/android/multiwindow/DragAndDropHelper;

    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$Builder;->mInitialDropTargetVisible:Z

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/multiwindow/DragAndDropHelper;-><init>(ZLcom/samsung/android/multiwindow/DragAndDropHelper-IA;)V

    return-object v0
.end method

.method public blacklist setInitialDropTargetVisible(Z)Lcom/samsung/android/multiwindow/DragAndDropHelper$Builder;
    .locals 0
    .param p1, "visible"    # Z

    .line 100
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$Builder;->mInitialDropTargetVisible:Z

    .line 101
    return-object p0
.end method
