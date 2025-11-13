.class public final Landroid/hardware/face/FaceEnrollStages;
.super Ljava/lang/Object;
.source "FaceEnrollStages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/FaceEnrollStages$FaceEnrollStage;
    }
.end annotation


# static fields
.field public static final blacklist ENROLLING_MOVEMENT_1:I = 0x4

.field public static final blacklist ENROLLING_MOVEMENT_2:I = 0x5

.field public static final blacklist ENROLLMENT_ENROLLING_MOVEMENT_DOWN:I = 0x66

.field public static final blacklist ENROLLMENT_ENROLLING_MOVEMENT_FRONT:I = 0x64

.field public static final blacklist ENROLLMENT_ENROLLING_MOVEMENT_LEFT:I = 0x67

.field public static final blacklist ENROLLMENT_ENROLLING_MOVEMENT_RIGHT:I = 0x68

.field public static final blacklist ENROLLMENT_ENROLLING_MOVEMENT_UP:I = 0x65

.field public static final blacklist ENROLLMENT_FINISHED:I = 0x6

.field public static final blacklist ENROLLMENT_WAITING_FOR_FACE_DOWN:I = 0x70

.field public static final blacklist ENROLLMENT_WAITING_FOR_FACE_FRONT:I = 0x6e

.field public static final blacklist ENROLLMENT_WAITING_FOR_FACE_LEFT:I = 0x71

.field public static final blacklist ENROLLMENT_WAITING_FOR_FACE_RIGHT:I = 0x72

.field public static final blacklist ENROLLMENT_WAITING_FOR_FACE_UP:I = 0x6f

.field public static final blacklist FIRST_FRAME_RECEIVED:I = 0x1

.field public static final blacklist HOLD_STILL_IN_CENTER:I = 0x3

.field public static final blacklist UNKNOWN:I = 0x0

.field public static final blacklist WAITING_FOR_CENTERING:I = 0x2


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
