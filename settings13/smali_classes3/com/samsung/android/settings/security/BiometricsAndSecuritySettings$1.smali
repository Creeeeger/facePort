.class Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$1;
.super Landroid/database/ContentObserver;
.source "BiometricsAndSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;Landroid/os/Handler;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$1;->this$0:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$1;->this$0:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->access$000(Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    return-void
.end method
