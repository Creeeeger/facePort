.class public final Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appIcon:Landroid/graphics/drawable/Drawable;

.field public final appName:Ljava/lang/String;

.field public isSelected:Z

.field public final packageName:Ljava/lang/String;

.field public final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->appName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    iput p4, p0, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->priority:I

    iput-boolean p5, p0, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->isSelected:Z

    return-void
.end method
