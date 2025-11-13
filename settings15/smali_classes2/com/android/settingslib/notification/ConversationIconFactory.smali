.class public final Lcom/android/settingslib/notification/ConversationIconFactory;
.super Lcom/android/launcher3/icons/BaseIconFactory;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CIRCLE_RADIUS:F

.field public static final RING_STROKE_WIDTH:F


# instance fields
.field public final mImportantConversationColor:I

.field public final mLauncherApps:Landroid/content/pm/LauncherApps;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4072000000000000L    # 288.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    const/high16 v3, 0x41200000    # 10.0f

    sub-float/2addr v3, v2

    div-float/2addr v3, v1

    add-float/2addr v3, v2

    sput v3, Lcom/android/settingslib/notification/ConversationIconFactory;->CIRCLE_RADIUS:F

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v2, v0

    div-float/2addr v2, v1

    sput v2, Lcom/android/settingslib/notification/ConversationIconFactory;->RING_STROKE_WIDTH:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Landroid/content/pm/PackageManager;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-direct {p0, p1, v0, p4}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    iput-object p2, p0, Lcom/android/settingslib/notification/ConversationIconFactory;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iput-object p3, p0, Lcom/android/settingslib/notification/ConversationIconFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0601ce

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/notification/ConversationIconFactory;->mImportantConversationColor:I

    return-void
.end method
