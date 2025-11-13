.class public final Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appIcon:Landroid/graphics/drawable/Drawable;

.field public final appName:Ljava/lang/String;

.field public isSelected:Z

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->appName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    iput-boolean p4, p0, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->isSelected:Z

    return-void
.end method
