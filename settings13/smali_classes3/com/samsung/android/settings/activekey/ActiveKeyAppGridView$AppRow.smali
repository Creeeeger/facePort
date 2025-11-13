.class Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;
.super Ljava/lang/Object;
.source "ActiveKeyAppGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppRow"
.end annotation


# instance fields
.field public mActivityName:Ljava/lang/String;

.field public mIcon:I

.field public mPackageName:Ljava/lang/String;

.field public mState:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;-><init>()V

    return-void
.end method
