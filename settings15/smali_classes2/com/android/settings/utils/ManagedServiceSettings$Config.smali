.class public final Lcom/android/settings/utils/ManagedServiceSettings$Config;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final configIntentAction:Ljava/lang/String;

.field public final emptyText:I

.field public final intentAction:Ljava/lang/String;

.field public final noun:Ljava/lang/String;

.field public final permission:Ljava/lang/String;

.field public final setting:Ljava/lang/String;

.field public final tag:Ljava/lang/String;

.field public final warningDialogSummary:I

.field public final warningDialogTitle:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    iput p7, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->warningDialogTitle:I

    iput p8, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->warningDialogSummary:I

    iput p9, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->emptyText:I

    iput-object p4, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->configIntentAction:Ljava/lang/String;

    return-void
.end method
