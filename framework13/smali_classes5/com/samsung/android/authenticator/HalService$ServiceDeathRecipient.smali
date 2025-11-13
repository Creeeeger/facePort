.class final Lcom/samsung/android/authenticator/HalService$ServiceDeathRecipient;
.super Ljava/lang/Object;
.source "HalService.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/authenticator/HalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServiceDeathRecipient"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist serviceDied(J)V
    .locals 2
    .param p1, "cookie"    # J

    .line 208
    const-string v0, "HS"

    const-string/jumbo v1, "service id died"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/authenticator/HalService;->-$$Nest$sfputmService(Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;)V

    .line 210
    return-void
.end method
