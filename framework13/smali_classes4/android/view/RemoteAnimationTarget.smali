.class public Landroid/view/RemoteAnimationTarget;
.super Ljava/lang/Object;
.source "RemoteAnimationTarget.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/RemoteAnimationTarget$Mode;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/RemoteAnimationTarget;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MODE_CHANGING:I = 0x2

.field public static final greylist-max-o MODE_CLOSING:I = 0x1

.field public static final greylist-max-o MODE_OPENING:I


# instance fields
.field public greylist allowEnterPip:Z

.field public blacklist backgroundColor:I

.field public final greylist clipRect:Landroid/graphics/Rect;

.field public final greylist contentInsets:Landroid/graphics/Rect;

.field public blacklist hasAnimatingParent:Z

.field public greylist isNotInRecents:Z

.field public final greylist isTranslucent:Z

.field public final greylist leash:Landroid/view/SurfaceControl;

.field public final blacklist localBounds:Landroid/graphics/Rect;

.field public final greylist mode:I

.field public final greylist position:Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final greylist prefixOrderIndex:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final blacklist screenSpaceBounds:Landroid/graphics/Rect;

.field public final greylist sourceContainerBounds:Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final greylist-max-r startBounds:Landroid/graphics/Rect;

.field public final greylist-max-r startLeash:Landroid/view/SurfaceControl;

.field public final greylist taskId:I

.field public blacklist taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final greylist windowConfiguration:Landroid/app/WindowConfiguration;

.field public final blacklist windowType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 369
    new-instance v0, Landroid/view/RemoteAnimationTarget$1;

    invoke-direct {v0}, Landroid/view/RemoteAnimationTarget$1;-><init>()V

    sput-object v0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 18
    .param p1, "taskId"    # I
    .param p2, "mode"    # I
    .param p3, "leash"    # Landroid/view/SurfaceControl;
    .param p4, "isTranslucent"    # Z
    .param p5, "clipRect"    # Landroid/graphics/Rect;
    .param p6, "contentInsets"    # Landroid/graphics/Rect;
    .param p7, "prefixOrderIndex"    # I
    .param p8, "position"    # Landroid/graphics/Point;
    .param p9, "localBounds"    # Landroid/graphics/Rect;
    .param p10, "screenSpaceBounds"    # Landroid/graphics/Rect;
    .param p11, "windowConfig"    # Landroid/app/WindowConfiguration;
    .param p12, "isNotInRecents"    # Z
    .param p13, "startLeash"    # Landroid/view/SurfaceControl;
    .param p14, "startBounds"    # Landroid/graphics/Rect;
    .param p15, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p16, "allowEnterPip"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    .line 237
    const/16 v17, -0x1

    invoke-direct/range {v0 .. v17}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    .line 240
    return-void
.end method

.method public constructor blacklist <init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V
    .locals 16
    .param p1, "taskId"    # I
    .param p2, "mode"    # I
    .param p3, "leash"    # Landroid/view/SurfaceControl;
    .param p4, "isTranslucent"    # Z
    .param p5, "clipRect"    # Landroid/graphics/Rect;
    .param p6, "contentInsets"    # Landroid/graphics/Rect;
    .param p7, "prefixOrderIndex"    # I
    .param p8, "position"    # Landroid/graphics/Point;
    .param p9, "localBounds"    # Landroid/graphics/Rect;
    .param p10, "screenSpaceBounds"    # Landroid/graphics/Rect;
    .param p11, "windowConfig"    # Landroid/app/WindowConfiguration;
    .param p12, "isNotInRecents"    # Z
    .param p13, "startLeash"    # Landroid/view/SurfaceControl;
    .param p14, "startBounds"    # Landroid/graphics/Rect;
    .param p15, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p16, "allowEnterPip"    # Z
    .param p17, "windowType"    # I

    .line 248
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p10

    move-object/from16 v3, p14

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 249
    move/from16 v4, p2

    iput v4, v0, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 250
    move/from16 v5, p1

    iput v5, v0, Landroid/view/RemoteAnimationTarget;->taskId:I

    .line 251
    move-object/from16 v6, p3

    iput-object v6, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 252
    move/from16 v7, p4

    iput-boolean v7, v0, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    .line 253
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v9, p5

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v8, v0, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    .line 254
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v10, p6

    invoke-direct {v8, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v8, v0, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    .line 255
    move/from16 v8, p7

    iput v8, v0, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    .line 256
    new-instance v11, Landroid/graphics/Point;

    if-nez v1, :cond_0

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {v11, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    :goto_0
    iput-object v11, v0, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    .line 257
    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v12, p9

    invoke-direct {v11, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v11, v0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    .line 258
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v11, v0, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 259
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v11, v0, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    .line 260
    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 261
    move/from16 v13, p12

    iput-boolean v13, v0, Landroid/view/RemoteAnimationTarget;->isNotInRecents:Z

    .line 262
    move-object/from16 v14, p13

    iput-object v14, v0, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    .line 263
    if-nez v3, :cond_1

    const/4 v15, 0x0

    goto :goto_1

    :cond_1
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_1
    iput-object v15, v0, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    .line 264
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 265
    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/view/RemoteAnimationTarget;->allowEnterPip:Z

    .line 266
    move/from16 v1, p17

    iput v1, v0, Landroid/view/RemoteAnimationTarget;->windowType:I

    .line 267
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/RemoteAnimationTarget;->taskId:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 272
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    .line 274
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    .line 275
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    .line 277
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    .line 278
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    .line 279
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 280
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    .line 281
    sget-object v0, Landroid/app/WindowConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WindowConfiguration;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->isNotInRecents:Z

    .line 283
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    .line 284
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    .line 285
    sget-object v0, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->allowEnterPip:Z

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/RemoteAnimationTarget;->windowType:I

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->hasAnimatingParent:Z

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/RemoteAnimationTarget;->backgroundColor:I

    .line 290
    return-void
.end method

.method private static blacklist printPoint(Landroid/graphics/Point;Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "p"    # Landroid/graphics/Point;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 366
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 322
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/RemoteAnimationTarget;->mode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 323
    const-string v0, " taskId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 324
    const-string v0, " isTranslucent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 325
    const-string v0, " clipRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 326
    const-string v0, " contentInsets="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 327
    const-string v0, " prefixOrderIndex="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 328
    const-string v0, " position="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    invoke-static {v0, p1}, Landroid/view/RemoteAnimationTarget;->printPoint(Landroid/graphics/Point;Ljava/io/PrintWriter;)V

    .line 329
    const-string v0, " sourceContainerBounds="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 330
    const-string v0, " screenSpaceBounds="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 331
    const-string v0, " localBounds="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 332
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 333
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "windowConfiguration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 334
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "leash="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 335
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "taskInfo="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 336
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "allowEnterPip="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->allowEnterPip:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 337
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "windowType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/RemoteAnimationTarget;->windowType:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 338
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasAnimatingParent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->hasAnimatingParent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 339
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "backgroundColor="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/RemoteAnimationTarget;->backgroundColor:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 340
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 343
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 344
    .local v0, "token":J
    iget v2, p0, Landroid/view/RemoteAnimationTarget;->taskId:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 345
    iget v2, p0, Landroid/view/RemoteAnimationTarget;->mode:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 346
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/SurfaceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 347
    iget-boolean v2, p0, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 348
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 349
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000006L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 350
    iget v2, p0, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    const-wide v3, 0x10500000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 351
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    const-wide v3, 0x10b00000008L

    invoke-static {v2, p1, v3, v4}, Landroid/graphics/GraphicsProtos;->dumpPointProto(Landroid/graphics/Point;Landroid/util/proto/ProtoOutputStream;J)V

    .line 352
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000009L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 353
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000000eL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 354
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000000dL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 355
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    const-wide v3, 0x10b0000000aL

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/WindowConfiguration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 356
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_0

    .line 357
    const-wide v3, 0x10b0000000bL

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/SurfaceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 359
    :cond_0
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    .line 360
    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 362
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 363
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 299
    iget v0, p0, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget v0, p0, Landroid/view/RemoteAnimationTarget;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 302
    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 303
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 304
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 305
    iget v0, p0, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 307
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 308
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 309
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 310
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 311
    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->isNotInRecents:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 312
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 313
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 314
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 315
    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->allowEnterPip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 316
    iget v0, p0, Landroid/view/RemoteAnimationTarget;->windowType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->hasAnimatingParent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 318
    iget v0, p0, Landroid/view/RemoteAnimationTarget;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    return-void
.end method
