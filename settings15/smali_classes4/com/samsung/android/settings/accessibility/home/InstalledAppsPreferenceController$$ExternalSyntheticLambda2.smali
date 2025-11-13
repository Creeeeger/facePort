.class public final synthetic Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/content/pm/ServiceInfo;

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController;->$r8$lambda$P1ylyR3AtwxlfVcCSItAwsn0fJw(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController;->$r8$lambda$SUKOYBB6vAYMQnihdw0HOCWGfIs(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
