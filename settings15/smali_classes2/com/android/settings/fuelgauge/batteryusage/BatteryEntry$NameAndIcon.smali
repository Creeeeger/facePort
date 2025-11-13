.class public final Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIcon:Landroid/graphics/drawable/Drawable;

.field public final mIconId:I

.field public final mName:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iput p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIconId:I

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mPackageName:Ljava/lang/String;

    return-void
.end method
