.class Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;
.super Ljava/lang/Object;
.source "PatternRestoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternLookupInfo"
.end annotation


# instance fields
.field public mName:Ljava/lang/String;

.field public mSepIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;->mName:Ljava/lang/String;

    .line 47
    iput p2, p0, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper$PatternLookupInfo;->mSepIndex:I

    return-void
.end method
