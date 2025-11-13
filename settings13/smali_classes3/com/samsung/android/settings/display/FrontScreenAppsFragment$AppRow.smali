.class public Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;
.super Ljava/lang/Object;
.source "FrontScreenAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FrontScreenAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppRow"
.end annotation


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field public mFamilyAppsName:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mLabel:Ljava/lang/CharSequence;

.field public mPackage:Ljava/lang/String;

.field public mType:I

.field public mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
