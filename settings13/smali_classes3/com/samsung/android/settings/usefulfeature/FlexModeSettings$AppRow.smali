.class Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;
.super Ljava/lang/Object;
.source "FlexModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppRow"
.end annotation


# instance fields
.field public mControllable:Z

.field public mIsEnabled:Z

.field public mPackage:Ljava/lang/String;

.field public mSummaryResId:I

.field public mType:I

.field public mUid:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;-><init>()V

    return-void
.end method
