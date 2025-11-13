.class public Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;
.super Ljava/lang/Object;
.source "TranscodeElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/external/TranscodeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExportParameters"
.end annotation


# instance fields
.field public blacklist creationTime:J

.field public blacklist exportBitdepth:I

.field public blacklist exportFrameRate:I

.field public blacklist exportHeight:I

.field public blacklist exportRecordingMode:I

.field public blacklist exportWidth:I

.field public blacklist isHevcTranscodeOn:Z

.field public blacklist isLocationAvailable:Z

.field public blacklist locationInfo:Ljava/lang/String;

.field public blacklist origRoiHeight:I

.field public blacklist origRoiWidth:I

.field public blacklist origRoiXPos:I

.field public blacklist origRoiYPos:I

.field public blacklist outputFd:Ljava/io/FileDescriptor;

.field public blacklist outputFileName:Ljava/lang/String;

.field public blacklist roiHeight:I

.field public blacklist roiWidth:I

.field public blacklist roiXPos:I

.field public blacklist roiYPos:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;IIIIIIIIIIZJ)V
    .locals 1
    .param p1, "outputFileName"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "origRoiWidth"    # I
    .param p5, "origRoiHeight"    # I
    .param p6, "origRoiXPos"    # I
    .param p7, "origRoiYPos"    # I
    .param p8, "roiWidth"    # I
    .param p9, "roiHeight"    # I
    .param p10, "roiXPos"    # I
    .param p11, "roiYPos"    # I
    .param p12, "isHevcTranscodeOn"    # Z
    .param p13, "creationTime"    # J

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportRecordingMode:I

    .line 442
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->outputFileName:Ljava/lang/String;

    .line 443
    iput p2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportWidth:I

    .line 444
    iput p3, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportHeight:I

    .line 445
    iput-boolean p12, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->isHevcTranscodeOn:Z

    .line 446
    iput-wide p13, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->creationTime:J

    .line 447
    iput p4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiWidth:I

    .line 448
    iput p5, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiHeight:I

    .line 449
    iput p6, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiXPos:I

    .line 450
    iput p7, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiYPos:I

    .line 451
    iput p8, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiWidth:I

    .line 452
    iput p9, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiHeight:I

    .line 453
    iput p10, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiXPos:I

    .line 454
    iput p11, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiYPos:I

    .line 455
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportBitdepth:I

    .line 456
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportFrameRate:I

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->outputFd:Ljava/io/FileDescriptor;

    .line 458
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIIIIIIIIIZJII)V
    .locals 16
    .param p1, "outputFileName"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "origRoiWidth"    # I
    .param p5, "origRoiHeight"    # I
    .param p6, "origRoiXPos"    # I
    .param p7, "origRoiYPos"    # I
    .param p8, "roiWidth"    # I
    .param p9, "roiHeight"    # I
    .param p10, "roiXPos"    # I
    .param p11, "roiYPos"    # I
    .param p12, "isHevcTranscodeOn"    # Z
    .param p13, "creationTime"    # J
    .param p15, "exportBitdepth"    # I
    .param p16, "exportFrameRate"    # I

    .line 422
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportRecordingMode:I

    .line 423
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->outputFileName:Ljava/lang/String;

    .line 424
    move/from16 v2, p2

    iput v2, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportWidth:I

    .line 425
    move/from16 v3, p3

    iput v3, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportHeight:I

    .line 426
    move/from16 v4, p12

    iput-boolean v4, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->isHevcTranscodeOn:Z

    .line 427
    move-wide/from16 v5, p13

    iput-wide v5, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->creationTime:J

    .line 428
    move/from16 v7, p4

    iput v7, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiWidth:I

    .line 429
    move/from16 v8, p5

    iput v8, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiHeight:I

    .line 430
    move/from16 v9, p6

    iput v9, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiXPos:I

    .line 431
    move/from16 v10, p7

    iput v10, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiYPos:I

    .line 432
    move/from16 v11, p8

    iput v11, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiWidth:I

    .line 433
    move/from16 v12, p9

    iput v12, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiHeight:I

    .line 434
    move/from16 v13, p10

    iput v13, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiXPos:I

    .line 435
    move/from16 v14, p11

    iput v14, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiYPos:I

    .line 436
    move/from16 v15, p15

    iput v15, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportBitdepth:I

    .line 437
    move/from16 v1, p16

    iput v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportFrameRate:I

    .line 438
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->outputFd:Ljava/io/FileDescriptor;

    .line 439
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIIIIIIIIIZJIILjava/io/FileDescriptor;)V
    .locals 16
    .param p1, "outputFileName"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "origRoiWidth"    # I
    .param p5, "origRoiHeight"    # I
    .param p6, "origRoiXPos"    # I
    .param p7, "origRoiYPos"    # I
    .param p8, "roiWidth"    # I
    .param p9, "roiHeight"    # I
    .param p10, "roiXPos"    # I
    .param p11, "roiYPos"    # I
    .param p12, "isHevcTranscodeOn"    # Z
    .param p13, "creationTime"    # J
    .param p15, "exportBitdepth"    # I
    .param p16, "exportFrameRate"    # I
    .param p17, "outputfd"    # Ljava/io/FileDescriptor;

    .line 402
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportRecordingMode:I

    .line 403
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->outputFileName:Ljava/lang/String;

    .line 404
    move/from16 v2, p2

    iput v2, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportWidth:I

    .line 405
    move/from16 v3, p3

    iput v3, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportHeight:I

    .line 406
    move/from16 v4, p12

    iput-boolean v4, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->isHevcTranscodeOn:Z

    .line 407
    move-wide/from16 v5, p13

    iput-wide v5, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->creationTime:J

    .line 408
    move/from16 v7, p4

    iput v7, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiWidth:I

    .line 409
    move/from16 v8, p5

    iput v8, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiHeight:I

    .line 410
    move/from16 v9, p6

    iput v9, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiXPos:I

    .line 411
    move/from16 v10, p7

    iput v10, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiYPos:I

    .line 412
    move/from16 v11, p8

    iput v11, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiWidth:I

    .line 413
    move/from16 v12, p9

    iput v12, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiHeight:I

    .line 414
    move/from16 v13, p10

    iput v13, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiXPos:I

    .line 415
    move/from16 v14, p11

    iput v14, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiYPos:I

    .line 416
    move/from16 v15, p15

    iput v15, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportBitdepth:I

    .line 417
    move/from16 v1, p16

    iput v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportFrameRate:I

    .line 418
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->outputFd:Ljava/io/FileDescriptor;

    .line 419
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIIIIIIIIIZZZJ)V
    .locals 16
    .param p1, "outputFileName"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "origRoiWidth"    # I
    .param p5, "origRoiHeight"    # I
    .param p6, "origRoiXPos"    # I
    .param p7, "origRoiYPos"    # I
    .param p8, "roiWidth"    # I
    .param p9, "roiHeight"    # I
    .param p10, "roiXPos"    # I
    .param p11, "roiYPos"    # I
    .param p12, "isStabilizeOn"    # Z
    .param p13, "isAfterAutoEdit"    # Z
    .param p14, "isHevcTranscodeOn"    # Z
    .param p15, "creationTime"    # J

    .line 504
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportRecordingMode:I

    .line 505
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->outputFileName:Ljava/lang/String;

    .line 506
    move/from16 v2, p2

    iput v2, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportWidth:I

    .line 507
    move/from16 v3, p3

    iput v3, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportHeight:I

    .line 508
    move/from16 v4, p14

    iput-boolean v4, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->isHevcTranscodeOn:Z

    .line 509
    move-wide/from16 v5, p15

    iput-wide v5, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->creationTime:J

    .line 510
    move/from16 v7, p4

    iput v7, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiWidth:I

    .line 511
    move/from16 v8, p5

    iput v8, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiHeight:I

    .line 512
    move/from16 v9, p6

    iput v9, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiXPos:I

    .line 513
    move/from16 v10, p7

    iput v10, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiYPos:I

    .line 514
    move/from16 v11, p8

    iput v11, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiWidth:I

    .line 515
    move/from16 v12, p9

    iput v12, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiHeight:I

    .line 516
    move/from16 v13, p10

    iput v13, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiXPos:I

    .line 517
    move/from16 v14, p11

    iput v14, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiYPos:I

    .line 518
    const/16 v15, 0x8

    iput v15, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportBitdepth:I

    .line 519
    const/16 v15, 0x1e

    iput v15, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportFrameRate:I

    .line 520
    const/4 v15, 0x0

    iput-object v15, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->outputFd:Ljava/io/FileDescriptor;

    .line 521
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIIIIIIIIIZZZJII)V
    .locals 16
    .param p1, "outputFileName"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "origRoiWidth"    # I
    .param p5, "origRoiHeight"    # I
    .param p6, "origRoiXPos"    # I
    .param p7, "origRoiYPos"    # I
    .param p8, "roiWidth"    # I
    .param p9, "roiHeight"    # I
    .param p10, "roiXPos"    # I
    .param p11, "roiYPos"    # I
    .param p12, "isStabilizeOn"    # Z
    .param p13, "isAfterAutoEdit"    # Z
    .param p14, "isHevcTranscodeOn"    # Z
    .param p15, "creationTime"    # J
    .param p17, "exportBitdepth"    # I
    .param p18, "exportFrameRate"    # I

    .line 485
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportRecordingMode:I

    .line 486
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->outputFileName:Ljava/lang/String;

    .line 487
    move/from16 v2, p2

    iput v2, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportWidth:I

    .line 488
    move/from16 v3, p3

    iput v3, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportHeight:I

    .line 489
    move/from16 v4, p14

    iput-boolean v4, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->isHevcTranscodeOn:Z

    .line 490
    move-wide/from16 v5, p15

    iput-wide v5, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->creationTime:J

    .line 491
    move/from16 v7, p4

    iput v7, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiWidth:I

    .line 492
    move/from16 v8, p5

    iput v8, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiHeight:I

    .line 493
    move/from16 v9, p6

    iput v9, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiXPos:I

    .line 494
    move/from16 v10, p7

    iput v10, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiYPos:I

    .line 495
    move/from16 v11, p8

    iput v11, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiWidth:I

    .line 496
    move/from16 v12, p9

    iput v12, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiHeight:I

    .line 497
    move/from16 v13, p10

    iput v13, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiXPos:I

    .line 498
    move/from16 v14, p11

    iput v14, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiYPos:I

    .line 499
    move/from16 v15, p17

    iput v15, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportBitdepth:I

    .line 500
    move/from16 v1, p18

    iput v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportFrameRate:I

    .line 501
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->outputFd:Ljava/io/FileDescriptor;

    .line 502
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIIIIIIIIIZZZJIILjava/io/FileDescriptor;)V
    .locals 16
    .param p1, "outputFileName"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "origRoiWidth"    # I
    .param p5, "origRoiHeight"    # I
    .param p6, "origRoiXPos"    # I
    .param p7, "origRoiYPos"    # I
    .param p8, "roiWidth"    # I
    .param p9, "roiHeight"    # I
    .param p10, "roiXPos"    # I
    .param p11, "roiYPos"    # I
    .param p12, "isStabilizeOn"    # Z
    .param p13, "isAfterAutoEdit"    # Z
    .param p14, "isHevcTranscodeOn"    # Z
    .param p15, "creationTime"    # J
    .param p17, "exportBitdepth"    # I
    .param p18, "exportFrameRate"    # I
    .param p19, "outputfd"    # Ljava/io/FileDescriptor;

    .line 465
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportRecordingMode:I

    .line 466
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->outputFileName:Ljava/lang/String;

    .line 467
    move/from16 v2, p2

    iput v2, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportWidth:I

    .line 468
    move/from16 v3, p3

    iput v3, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportHeight:I

    .line 469
    move/from16 v4, p14

    iput-boolean v4, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->isHevcTranscodeOn:Z

    .line 470
    move-wide/from16 v5, p15

    iput-wide v5, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->creationTime:J

    .line 471
    move/from16 v7, p4

    iput v7, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiWidth:I

    .line 472
    move/from16 v8, p5

    iput v8, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiHeight:I

    .line 473
    move/from16 v9, p6

    iput v9, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiXPos:I

    .line 474
    move/from16 v10, p7

    iput v10, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->origRoiYPos:I

    .line 475
    move/from16 v11, p8

    iput v11, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiWidth:I

    .line 476
    move/from16 v12, p9

    iput v12, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiHeight:I

    .line 477
    move/from16 v13, p10

    iput v13, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiXPos:I

    .line 478
    move/from16 v14, p11

    iput v14, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->roiYPos:I

    .line 479
    move/from16 v15, p17

    iput v15, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportBitdepth:I

    .line 480
    move/from16 v1, p18

    iput v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportFrameRate:I

    .line 481
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->outputFd:Ljava/io/FileDescriptor;

    .line 482
    return-void
.end method


# virtual methods
.method public blacklist getExportRecordingMode()I
    .locals 1

    .line 394
    iget v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportRecordingMode:I

    return v0
.end method

.method public blacklist getLocationInfo()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->locationInfo:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isLocationAvailable()Z
    .locals 1

    .line 378
    iget-boolean v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->isLocationAvailable:Z

    return v0
.end method

.method public blacklist setExportRecordingMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 398
    iput p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportRecordingMode:I

    .line 400
    return-void
.end method

.method public blacklist setLocationAvailable(Z)V
    .locals 0
    .param p1, "locationAvailable"    # Z

    .line 382
    iput-boolean p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->isLocationAvailable:Z

    .line 383
    return-void
.end method

.method public blacklist setLocationInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "locationInfo"    # Ljava/lang/String;

    .line 390
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->locationInfo:Ljava/lang/String;

    .line 391
    return-void
.end method
