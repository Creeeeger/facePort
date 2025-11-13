.class public Lcom/samsung/android/settings/notification/brief/policy/PolicyClientContract;
.super Ljava/lang/Object;
.source "PolicyClientContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/brief/policy/PolicyClientContract$PolicyItems;
    }
.end annotation


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.sm.policy"

    .line 10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/notification/brief/policy/PolicyClientContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method
