.class public Lcom/samsung/android/settings/share/common/ShareConstants;
.super Ljava/lang/Object;
.source "ShareConstants.java"


# static fields
.field public static final ICON_CLASS_FOR_INTENT_FORWARD_TO_PARENT:Ljava/lang/String;

.field public static final ICON_CLASS_FOR_SECUREFOLDER_FORWARD_TO_PROFILE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/settings/share/common/ShareConstants;->ICON_CLASS_FOR_INTENT_FORWARD_TO_PARENT:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE4:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/settings/share/common/ShareConstants;->ICON_CLASS_FOR_SECUREFOLDER_FORWARD_TO_PROFILE:Ljava/lang/String;

    return-void
.end method
