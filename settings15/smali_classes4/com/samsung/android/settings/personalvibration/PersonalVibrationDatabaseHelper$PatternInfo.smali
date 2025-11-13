.class public final Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCustomData:Ljava/lang/String;

.field public final mIsCustom:I

.field public final mName:Ljava/lang/String;

.field public final mPatternIndex:I

.field public final mVibrationType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;->mName:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;->mPatternIndex:I

    iput p3, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;->mVibrationType:I

    iput-object p4, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;->mCustomData:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$PatternInfo;->mIsCustom:I

    return-void
.end method
