.class public Lcom/android/internal/os/RoSystemProperties;
.super Ljava/lang/Object;
.source "RoSystemProperties.java"


# static fields
.field public static final blacklist CEC_AUDIO_DEVICE_FORWARD_VOLUME_KEYS_SYSTEM_AUDIO_MODE_OFF:Z

.field public static final blacklist CONFIG_AVOID_GFX_ACCEL:Z

.field public static final blacklist CONFIG_LOW_RAM:Z

.field public static final blacklist CONFIG_SMALL_BATTERY:Z

.field public static final blacklist CONTROL_PRIVAPP_PERMISSIONS:Ljava/lang/String;

.field public static final blacklist CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

.field public static final blacklist CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

.field public static final blacklist CONTROL_PRIVAPP_PERMISSIONS_LOG:Z

.field public static final blacklist CRYPTO_ENCRYPTED:Z

.field public static final blacklist CRYPTO_FILE_ENCRYPTED:Z

.field public static final blacklist CRYPTO_STATE:Landroid/sysprop/CryptoProperties$state_values;

.field public static final blacklist CRYPTO_TYPE:Landroid/sysprop/CryptoProperties$type_values;

.field public static final blacklist DEBUGGABLE:Z

.field public static final blacklist FACTORYTEST:I

.field public static final blacklist MULTIUSER_HEADLESS_SYSTEM_USER:Z

.field public static final blacklist SUPPORT_ONE_HANDED_MODE:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    nop

    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    nop

    const-string/jumbo v0, "ro.factorytest"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/os/RoSystemProperties;->FACTORYTEST:I

    nop

    const-string/jumbo v0, "ro.control_privapp_permissions"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS:Ljava/lang/String;

    nop

    const-string/jumbo v0, "ro.support_one_handed_mode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->SUPPORT_ONE_HANDED_MODE:Z

    invoke-static {}, Landroid/sysprop/HdmiProperties;->forward_volume_keys_when_system_audio_mode_off()Ljava/util/Optional;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CEC_AUDIO_DEVICE_FORWARD_VOLUME_KEYS_SYSTEM_AUDIO_MODE_OFF:Z

    nop

    const-string/jumbo v0, "ro.config.avoid_gfx_accel"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONFIG_AVOID_GFX_ACCEL:Z

    nop

    const-string/jumbo v0, "ro.config.low_ram"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONFIG_LOW_RAM:Z

    nop

    const-string/jumbo v0, "ro.config.small_battery"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONFIG_SMALL_BATTERY:Z

    nop

    const-string/jumbo v0, "ro.fw.mu.headless_system_user"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    invoke-static {}, Landroid/sysprop/CryptoProperties;->state()Ljava/util/Optional;

    move-result-object v0

    sget-object v3, Landroid/sysprop/CryptoProperties$state_values;->UNSUPPORTED:Landroid/sysprop/CryptoProperties$state_values;

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sysprop/CryptoProperties$state_values;

    sput-object v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_STATE:Landroid/sysprop/CryptoProperties$state_values;

    invoke-static {}, Landroid/sysprop/CryptoProperties;->type()Ljava/util/Optional;

    move-result-object v0

    sget-object v3, Landroid/sysprop/CryptoProperties$type_values;->NONE:Landroid/sysprop/CryptoProperties$type_values;

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sysprop/CryptoProperties$type_values;

    sput-object v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_TYPE:Landroid/sysprop/CryptoProperties$type_values;

    sget-object v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_STATE:Landroid/sysprop/CryptoProperties$state_values;

    sget-object v3, Landroid/sysprop/CryptoProperties$state_values;->ENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_ENCRYPTED:Z

    sget-object v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_TYPE:Landroid/sysprop/CryptoProperties$type_values;

    sget-object v3, Landroid/sysprop/CryptoProperties$type_values;->FILE:Landroid/sysprop/CryptoProperties$type_values;

    if-ne v0, v3, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_FILE_ENCRYPTED:Z

    sget-object v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS:Ljava/lang/String;

    const-string/jumbo v3, "log"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_LOG:Z

    sget-object v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS:Ljava/lang/String;

    const-string v3, "enforce"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_LOG:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    sput-boolean v1, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
