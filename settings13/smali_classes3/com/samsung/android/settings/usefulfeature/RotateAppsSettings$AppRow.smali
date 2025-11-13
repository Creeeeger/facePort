.class Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;
.super Ljava/lang/Object;
.source "RotateAppsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppRow"
.end annotation


# instance fields
.field public mPackage:Ljava/lang/String;

.field public mPolicyFlag:I

.field public mState:I

.field public mSwitchState:Z

.field public mUid:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;-><init>()V

    return-void
.end method
