.class public Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;
.super Ljava/lang/Object;
.source "AppShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/AppShortcutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field public isActive:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->isActive:Z

    return-void
.end method
