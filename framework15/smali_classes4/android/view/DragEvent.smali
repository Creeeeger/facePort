.class public Landroid/view/DragEvent;
.super Ljava/lang/Object;
.source "DragEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist ACTION_DRAG_ENDED:I = 0x4

.field public static final whitelist ACTION_DRAG_ENTERED:I = 0x5

.field public static final whitelist ACTION_DRAG_EXITED:I = 0x6

.field public static final whitelist ACTION_DRAG_LOCATION:I = 0x2

.field public static final whitelist ACTION_DRAG_STARTED:I = 0x1

.field public static final whitelist ACTION_DROP:I = 0x3

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_RECYCLED:I = 0xa

.field private static final greylist-max-o TRACK_RECYCLED_LOCATION:Z

.field private static final greylist-max-o gRecyclerLock:Ljava/lang/Object;

.field private static greylist-max-o gRecyclerTop:Landroid/view/DragEvent;

.field private static greylist-max-o gRecyclerUsed:I


# instance fields
.field greylist-max-o mAction:I

.field greylist-max-r mClipData:Landroid/content/ClipData;

.field greylist-max-r mClipDescription:Landroid/content/ClipDescription;

.field private blacklist mDisplayId:I

.field greylist-max-o mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

.field greylist-max-o mDragResult:Z

.field private blacklist mDragSurface:Landroid/view/SurfaceControl;

.field greylist-max-o mEventHandlerWasCalled:Z

.field private blacklist mFlags:I

.field private blacklist mIsEavesDropEvent:Z

.field private blacklist mIsStickyEvent:Z

.field greylist-max-o mLocalState:Ljava/lang/Object;

.field private greylist-max-o mNext:Landroid/view/DragEvent;

.field private blacklist mOffsetX:F

.field private blacklist mOffsetY:F

.field private greylist-max-o mRecycled:Z

.field private greylist-max-o mRecycledLocation:Ljava/lang/RuntimeException;

.field greylist-max-o mX:F

.field greylist-max-o mY:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDragSurface(Landroid/view/DragEvent;)Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Landroid/view/DragEvent;->mDragSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDisplayId(Landroid/view/DragEvent;I)V
    .locals 0

    iput p1, p0, Landroid/view/DragEvent;->mDisplayId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDragSurface(Landroid/view/DragEvent;Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p1, p0, Landroid/view/DragEvent;->mDragSurface:Landroid/view/SurfaceControl;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlags(Landroid/view/DragEvent;I)V
    .locals 0

    iput p1, p0, Landroid/view/DragEvent;->mFlags:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsEavesDropEvent(Landroid/view/DragEvent;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/DragEvent;->mIsEavesDropEvent:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsStickyEvent(Landroid/view/DragEvent;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/DragEvent;->mIsStickyEvent:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOffsetX(Landroid/view/DragEvent;F)V
    .locals 0

    iput p1, p0, Landroid/view/DragEvent;->mOffsetX:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOffsetY(Landroid/view/DragEvent;F)V
    .locals 0

    iput p1, p0, Landroid/view/DragEvent;->mOffsetY:F

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Landroid/view/DragEvent;->gRecyclerUsed:I

    const/4 v0, 0x0

    sput-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    new-instance v0, Landroid/view/DragEvent$1;

    invoke-direct {v0}, Landroid/view/DragEvent$1;-><init>()V

    sput-object v0, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/DragEvent;->mDisplayId:I

    return-void
.end method

.method public static blacklist actionToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "ACTION_DRAG_EXITED"

    return-object v0

    :pswitch_1
    const-string v0, "ACTION_DRAG_ENTERED"

    return-object v0

    :pswitch_2
    const-string v0, "ACTION_DRAG_ENDED"

    return-object v0

    :pswitch_3
    const-string v0, "ACTION_DROP"

    return-object v0

    :pswitch_4
    const-string v0, "ACTION_DRAG_LOCATION"

    return-object v0

    :pswitch_5
    const-string v0, "ACTION_DRAG_STARTED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist init(IFFFFILandroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Ljava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Landroid/view/DragEvent;->mAction:I

    iput p2, p0, Landroid/view/DragEvent;->mX:F

    iput p3, p0, Landroid/view/DragEvent;->mY:F

    iput p4, p0, Landroid/view/DragEvent;->mOffsetX:F

    iput p5, p0, Landroid/view/DragEvent;->mOffsetY:F

    iput p6, p0, Landroid/view/DragEvent;->mFlags:I

    iput-object p7, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object p8, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    iput-object p9, p0, Landroid/view/DragEvent;->mDragSurface:Landroid/view/SurfaceControl;

    iput-object p10, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    iput-object p11, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    iput-boolean p12, p0, Landroid/view/DragEvent;->mDragResult:Z

    return-void
.end method

.method static greylist-max-o obtain()Landroid/view/DragEvent;
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v11}, Landroid/view/DragEvent;->obtain(IFFFFILjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist obtain(IFFFFILjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;
    .locals 14

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-static/range {v0 .. v13}, Landroid/view/DragEvent;->obtain(IFFFFILjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;ZZI)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist obtain(IFFFFILjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;ZZI)Landroid/view/DragEvent;
    .locals 17

    move/from16 v1, p12

    move/from16 v2, p13

    sget-object v3, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/DragEvent;

    invoke-direct {v0}, Landroid/view/DragEvent;-><init>()V

    move-object v4, v0

    move/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p6

    move/from16 v16, p11

    invoke-direct/range {v4 .. v16}, Landroid/view/DragEvent;->init(IFFFFILandroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Ljava/lang/Object;Z)V

    iput-boolean v1, v0, Landroid/view/DragEvent;->mIsStickyEvent:Z

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v4, :cond_0

    iput v2, v0, Landroid/view/DragEvent;->mDisplayId:I

    :cond_0
    monitor-exit v3

    return-object v0

    :cond_1
    sget-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    iget-object v4, v0, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    sput-object v4, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    sget v4, Landroid/view/DragEvent;->gRecyclerUsed:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Landroid/view/DragEvent;->gRecyclerUsed:I

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    iput-object v3, v0, Landroid/view/DragEvent;->mRecycledLocation:Ljava/lang/RuntimeException;

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/view/DragEvent;->mRecycled:Z

    iput-object v3, v0, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    move-object v4, v0

    move/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p6

    move/from16 v16, p11

    invoke-direct/range {v4 .. v16}, Landroid/view/DragEvent;->init(IFFFFILandroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Ljava/lang/Object;Z)V

    iput-boolean v1, v0, Landroid/view/DragEvent;->mIsStickyEvent:Z

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v3, :cond_2

    iput v2, v0, Landroid/view/DragEvent;->mDisplayId:I

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static greylist-max-r obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;
    .locals 14

    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    iget v1, p0, Landroid/view/DragEvent;->mX:F

    iget v2, p0, Landroid/view/DragEvent;->mY:F

    iget v3, p0, Landroid/view/DragEvent;->mOffsetX:F

    iget v4, p0, Landroid/view/DragEvent;->mOffsetY:F

    iget v5, p0, Landroid/view/DragEvent;->mFlags:I

    iget-object v6, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    iget-object v7, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iget-object v8, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    iget-object v9, p0, Landroid/view/DragEvent;->mDragSurface:Landroid/view/SurfaceControl;

    iget-object v10, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    iget-boolean v11, p0, Landroid/view/DragEvent;->mDragResult:Z

    iget-boolean v12, p0, Landroid/view/DragEvent;->mIsStickyEvent:Z

    iget v13, p0, Landroid/view/DragEvent;->mDisplayId:I

    invoke-static/range {v0 .. v13}, Landroid/view/DragEvent;->obtain(IFFFFILjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;ZZI)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()I
    .locals 1

    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    return v0
.end method

.method public whitelist getClipData()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public whitelist getClipDescription()Landroid/content/ClipDescription;
    .locals 1

    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    return-object v0
.end method

.method public blacklist getDisplayId()I
    .locals 1

    iget v0, p0, Landroid/view/DragEvent;->mDisplayId:I

    return v0
.end method

.method public greylist-max-o getDragAndDropPermissions()Lcom/android/internal/view/IDragAndDropPermissions;
    .locals 1

    iget-object v0, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    return-object v0
.end method

.method public blacklist getDragFlags()I
    .locals 1

    iget v0, p0, Landroid/view/DragEvent;->mFlags:I

    return v0
.end method

.method public blacklist getDragSurface()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Landroid/view/DragEvent;->mDragSurface:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public whitelist getLocalState()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getOffsetX()F
    .locals 1

    iget v0, p0, Landroid/view/DragEvent;->mOffsetX:F

    return v0
.end method

.method public blacklist getOffsetY()F
    .locals 1

    iget v0, p0, Landroid/view/DragEvent;->mOffsetY:F

    return v0
.end method

.method public whitelist getResult()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/DragEvent;->mDragResult:Z

    return v0
.end method

.method public whitelist getX()F
    .locals 1

    iget v0, p0, Landroid/view/DragEvent;->mX:F

    return v0
.end method

.method public whitelist getY()F
    .locals 1

    iget v0, p0, Landroid/view/DragEvent;->mY:F

    return v0
.end method

.method public blacklist isEavesDrop()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/DragEvent;->mIsEavesDropEvent:Z

    return v0
.end method

.method public blacklist isStickyEvent()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/DragEvent;->mIsStickyEvent:Z

    return v0
.end method

.method public final greylist-max-o recycle()V
    .locals 4

    iget-boolean v0, p0, Landroid/view/DragEvent;->mRecycled:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/DragEvent;->mRecycled:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    iput-object v1, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v1, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    iput-boolean v1, p0, Landroid/view/DragEvent;->mIsEavesDropEvent:Z

    iput-boolean v1, p0, Landroid/view/DragEvent;->mIsStickyEvent:Z

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v2, :cond_0

    iput v1, p0, Landroid/view/DragEvent;->mDisplayId:I

    :cond_0
    sget-object v1, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v2, Landroid/view/DragEvent;->gRecyclerUsed:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    sget v2, Landroid/view/DragEvent;->gRecyclerUsed:I

    add-int/2addr v2, v0

    sput v2, Landroid/view/DragEvent;->gRecyclerUsed:I

    sget-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    iput-object v0, p0, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    sput-object p0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/DragEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setDisplayId(I)V
    .locals 0

    iput p1, p0, Landroid/view/DragEvent;->mDisplayId:I

    return-void
.end method

.method public blacklist setEavesDrop(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/DragEvent;->mIsEavesDropEvent:Z

    return-void
.end method

.method public blacklist setIsStickyEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/DragEvent;->mIsStickyEvent:Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DragEvent{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DragEvent;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DragEvent;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/DragEvent;->mDragResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isEavesDrop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/DragEvent;->mIsEavesDropEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isStickyEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/DragEvent;->mIsStickyEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/DragEvent;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/DragEvent;->mX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/DragEvent;->mY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/DragEvent;->mOffsetX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/DragEvent;->mOffsetY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/DragEvent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/DragEvent;->mDragResult:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/DragEvent;->mIsEavesDropEvent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/view/DragEvent;->mIsStickyEvent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/DragEvent;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipDescription;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object v0, p0, Landroid/view/DragEvent;->mDragSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/DragEvent;->mDragSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    iget-object v0, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    if-nez v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    invoke-interface {v0}, Lcom/android/internal/view/IDragAndDropPermissions;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :goto_3
    return-void
.end method
