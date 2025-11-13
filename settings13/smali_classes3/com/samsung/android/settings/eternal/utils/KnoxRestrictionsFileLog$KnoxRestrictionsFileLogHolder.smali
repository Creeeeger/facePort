.class Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog$KnoxRestrictionsFileLogHolder;
.super Ljava/lang/Object;
.source "KnoxRestrictionsFileLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KnoxRestrictionsFileLogHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;-><init>(Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog-IA;)V

    sput-object v0, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog$KnoxRestrictionsFileLogHolder;->INSTANCE:Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;

    return-void
.end method
