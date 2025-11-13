.class Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$LazyHolder;
.super Ljava/lang/Object;
.source "SaTokenTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 311
    new-instance v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    invoke-direct {v0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    return-void
.end method
