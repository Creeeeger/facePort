.class public Landroid/view/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final blacklist IMF_IME_ANIM_CANCEL:I = 0x7d08

.field public static final blacklist IMF_IME_ANIM_FINISH:I = 0x7d07

.field public static final blacklist IMF_IME_ANIM_START:I = 0x7d06

.field public static final blacklist IMF_IME_REMOTE_ANIM_CANCEL:I = 0x7d0b

.field public static final blacklist IMF_IME_REMOTE_ANIM_END:I = 0x7d0a

.field public static final blacklist IMF_IME_REMOTE_ANIM_START:I = 0x7d09

.field public static final blacklist VIEWROOT_DRAW_EVENT:I = 0xea64

.field public static final blacklist VIEW_ENQUEUE_INPUT_EVENT:I = 0xf232


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeImfImeAnimCancel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0, p2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7d08

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static blacklist writeImfImeAnimFinish(Ljava/lang/String;IFILjava/lang/String;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v0, v1, v2, p4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7d07

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static blacklist writeImfImeAnimStart(Ljava/lang/String;IFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7d06

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static blacklist writeImfImeRemoteAnimCancel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0, p2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7d0b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static blacklist writeImfImeRemoteAnimEnd(Ljava/lang/String;IIFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7d0a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static blacklist writeImfImeRemoteAnimStart(Ljava/lang/String;IIFFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v0, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7d09

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static blacklist writeViewEnqueueInputEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v0, 0xf232

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static blacklist writeViewrootDrawEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v0, 0xea64

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method
