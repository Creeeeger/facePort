.class public Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;
.super Ljava/lang/Object;
.source "PersonalVibrationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PatternInfo"
.end annotation


# instance fields
.field mCustomData:Ljava/lang/String;

.field mIsCustom:I

.field mName:Ljava/lang/String;

.field mPatternIndex:I

.field mVibrationType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 90
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;->mName:Ljava/lang/String;

    .line 95
    iput p2, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;->mPatternIndex:I

    .line 96
    iput p3, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;->mVibrationType:I

    .line 97
    iput-object p4, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;->mCustomData:Ljava/lang/String;

    .line 98
    iput p5, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;->mIsCustom:I

    return-void
.end method
