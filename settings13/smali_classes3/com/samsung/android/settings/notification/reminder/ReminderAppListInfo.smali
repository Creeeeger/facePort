.class public Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;
.super Ljava/lang/Object;
.source "ReminderAppListInfo.java"


# instance fields
.field final appIcon:Landroid/graphics/drawable/Drawable;

.field final appName:Ljava/lang/String;

.field public isSelected:Z

.field final packageName:Ljava/lang/String;

.field final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->appName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->packageName:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 22
    iput p4, p0, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->priority:I

    .line 23
    iput-boolean p5, p0, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->isSelected:Z

    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    .line 47
    iget p0, p0, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->priority:I

    return p0
.end method

.method public getSelected()Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->isSelected:Z

    return p0
.end method

.method public setSelect(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->isSelected:Z

    return-void
.end method
