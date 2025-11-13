.class Landroid/nfc/cardemulation/SeSettingsService$ISeSettingsServiceWrapper;
.super Landroid/nfc/cardemulation/ISeSettingsService$Stub;
.source "SeSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/SeSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISeSettingsServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/nfc/cardemulation/SeSettingsService;


# direct methods
.method private constructor blacklist <init>(Landroid/nfc/cardemulation/SeSettingsService;)V
    .locals 0

    .line 68
    iput-object p1, p0, Landroid/nfc/cardemulation/SeSettingsService$ISeSettingsServiceWrapper;->this$0:Landroid/nfc/cardemulation/SeSettingsService;

    invoke-direct {p0}, Landroid/nfc/cardemulation/ISeSettingsService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/nfc/cardemulation/SeSettingsService;Landroid/nfc/cardemulation/SeSettingsService$ISeSettingsServiceWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/nfc/cardemulation/SeSettingsService$ISeSettingsServiceWrapper;-><init>(Landroid/nfc/cardemulation/SeSettingsService;)V

    return-void
.end method


# virtual methods
.method public blacklist setSeacActive(Landroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "isMismatchCheckNeeded"    # Z

    .line 71
    iget-object v0, p0, Landroid/nfc/cardemulation/SeSettingsService$ISeSettingsServiceWrapper;->this$0:Landroid/nfc/cardemulation/SeSettingsService;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/cardemulation/SeSettingsService;->setSeacActive(Landroid/content/ComponentName;Z)V

    .line 72
    return-void
.end method
