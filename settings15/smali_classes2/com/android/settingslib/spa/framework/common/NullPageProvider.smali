.class public final Lcom/android/settingslib/spa/framework/common/NullPageProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/spa/framework/common/NullPageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/spa/framework/common/NullPageProvider;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/framework/common/NullPageProvider;->INSTANCE:Lcom/android/settingslib/spa/framework/common/NullPageProvider;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "NULL"

    return-object p0
.end method
